import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import 'YdsVo.dart';

class DaSom extends StatelessWidget {
  const DaSom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff243c84)),
        title: Text("장바구니"),
        actions: [
          IconButton(
              onPressed: () {
                print("홈으로");
              },
              icon: Icon(Icons.home))
        ],
      ),
      body: Container(
        width: 1080,
        height: 1920,
        padding: EdgeInsets.all(20),
        color: Color(0xff243c84),
        child: Container(
          height: 400,
          color: Colors.white,
          child: Container(
            child: _DaSom(),
          ),
        ),
      ),
    ); // Scaffold 끝
  } // build 메서드 끝
}

//등록
class _DaSom extends StatefulWidget {
  const _DaSom({super.key});

  @override
  State<_DaSom> createState() => _DaSomState();
}

//할일정의
class _DaSomState extends State<_DaSom> {
  final TextEditingController _countController = TextEditingController();
  int totalOrderPrice = 0; //초기값

  late Future<List<YdsVo>> shopListFuture;

  @override
  void initState() {
    super.initState();
    shopListFuture = getShopList();
  } //생애주기별 훅

  // 화면그리기
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: shopListFuture, //Future<> 함수명, 으로 받은 데이타
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('데이터를 불러오는 데 실패했습니다.'));
          } else if (!snapshot.hasData) {
            return Center(child: Text('데이터가 없습니다.'));
          } else {
            //데이터가 있으면

            // 모든 상품의 총 주문 가격 계산
            print("----------ddd--------------");
            print(snapshot.data!.length);
            print("----------ddd--------------");
            totalOrderPrice = 0;
            snapshot.data!.forEach((product) {
              print("===========================");
              print(product.productname);
              print(product.count);
              print(product.price);
              totalOrderPrice += product.count * product.price;
              print(totalOrderPrice);
            });

            return Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.location_on),
                            onPressed: () {},
                          ),
                          Text(
                            '역삼플래티넘점',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.check_circle),
                              onPressed: () {},
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 30),
                              child: Text(
                                '음료',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xff9e9e9e),
                        thickness: 2,
                        height: 20,
                      ),
                    ],
                  ),
                ),
                // ListView.builder 추가
                Expanded(
                    flex: 1,
                    child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              ListTile(
                                leading: Image.asset(
                                    "assets/images/${snapshot.data![index].picture}"),
                                title: Text(
                                    "${snapshot.data![index].productname}"),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("가격: ${snapshot.data![index].price}"),
                                    Text(
                                        "Size: ${snapshot.data![index].size} / 포장"),
                                  ],
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    deleteItem(snapshot.data![index].shopNo);
                                  },
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                width: 400,
                                child: OutlinedButton(
                                  onPressed: () {
                                    updateHI(snapshot.data![index].shopNo,
                                        snapshot.data![index].hiNo);
                                  },
                                  child: Text(
                                      "선택된 옵션: ${snapshot.data![index].hoi} =========> hot/ice 변경"),
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                if (snapshot
                                                        .data![index].count >
                                                    1) {
                                                  setState(() {
                                                    int totalcount1 = snapshot
                                                            .data![index]
                                                            .count-- -
                                                        1;
                                                    print(totalcount1);

                                                    print(snapshot
                                                        .data![index].shopNo);

                                                    modifyPerson(
                                                        snapshot.data![index]
                                                            .shopNo,
                                                        totalcount1);
                                                  });
                                                  // 수량이 1보다 크면 1 감소
                                                  //calculateTotalOrderPrice(snapshot.data!); // 수량 변경 후에 totalOrderPrice 다시 계산
                                                }
                                              });
                                            },
                                            icon: Icon(
                                                Icons.indeterminate_check_box),
                                          ),
                                        ),
                                        Text(
                                          "${snapshot.data![index].count}",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Container(
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                setState(() {
                                                  int totalcount2 = snapshot
                                                          .data![index]
                                                          .count++ +
                                                      1;
                                                  print(totalcount2);

                                                  modifyPerson(
                                                      snapshot
                                                          .data![index].shopNo,
                                                      totalcount2);
                                                });
                                                // 수량 증가
                                                //calculateTotalOrderPrice(snapshot.data!); // 수량 변경 후에 totalOrderPrice 다시 계산
                                              });
                                            },
                                            icon: Icon(Icons.add_box),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "${snapshot.data![index].count * snapshot.data![index].price}",
                                            style: TextStyle(fontSize: 17),
                                            textAlign: TextAlign.end,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      color: Color(0xff9e9e9e),
                                      thickness: 1,
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        })),

                Divider(
                  color: Color(0xff9e9e9e),
                  thickness: 2,
                  height: 10,
                ),
                // 반복되지 않는 동적인 부분
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 40,
                        margin: EdgeInsets.only(top: 20),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/youngsoo');
                          },
                          child: Text("+ 메뉴 더 담기"),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Color(0xff9e9e9e),
                  thickness: 1,
                  height: 30,
                ),
                Container(
                  width: 350,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff243c84),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/eunbin');
                    },
                    child: Text(
                      "총  ${totalOrderPrice}원 매장 주문하기",
                      style: TextStyle(color: Color(0xffffffff), fontSize: 18),
                    ),
                  ),
                ),
              ],
            );
          }
        });
  }

  //리스트가져오기 dio통신
  Future<List<YdsVo>> getShopList() async {
    try {
      /*----요청처리-------------------*/
      //Dio 객체 생성 및 설정
      var dio = Dio();

      // 헤더설정:json으로 전송
      dio.options.headers['Content-Type'] = 'application/json';

      // 서버 요청
      final response = await dio.get(
        'http://localhost:9011/api/shop/list/4',
        /*data: {
    //예시
  }*/
      );
      /*----응답처리-------------------*/
      if (response.statusCode == 200) {
        //접속성공 200 이면
        print(response.data["apiData"][0]); // json->map 자동변경
        //print(response.data); // json->map 자동변경
        //print(response.data[0]["shopList"]); // json->map 자동변경
        //비어있는 리스트 생성 []
        //map ->{} 객체로 만들기
        //[{},{},{}]

        List<YdsVo> shopList = [];
        for (int i = 0; i < response.data["apiData"].length; i++) {
          print("반복확인");

          YdsVo ydsVo = YdsVo.fromJson(response.data["apiData"][i]);
          //print(response.data["apiData"][i]);
          shopList.add(ydsVo);
        }
        print("==========================");
        print(shopList);
        print("==========================");
        //print(response.data["apiData"][0]["name"]);
        return shopList;
        //return PersonVo.fromJson(response.data["apiData"]);
      } else {
        //접속실패 404, 502등등 api서버 문제
        throw Exception('서버 문제');
      }
    } catch (e) {
      //예외 발생
      throw Exception('Failed to load person: $e');
    }
  }

  //리스트에서 항목 삭제
  Future<void> deleteItem(int shopNo) async {
    print("-----------------------------");
    print(shopNo);
    print("-----------------------------");
    try {
      /*----요청처리-------------------*/
      //Dio 객체 생성 및 설정
      var dio = Dio();

      // 헤더설정:json으로 전송
      dio.options.headers['Content-Type'] = 'application/json';

      // 서버 요청
      final response = await dio.delete(
          'http://localhost:9011/api/shop/list/${shopNo}',
          data: {'shopNo': shopNo});

      /*----응답처리-------------------*/
      if (response.statusCode == 200) {
        //접속성공 200 이면
        print(response.data); // json->map 자동변경
        //print(response.data["apiData"]);
        //return PersonVo.fromJson(response.data);
        //return PersonVo.fromJson(response.data["apiData"]);
        // 리스트를 다시 가져오고 FutureBuilder를 rebuild
        setState(() {
          shopListFuture = getShopList();
        });
      } else {
        //접속실패 404, 502등등 api서버 문제
        throw Exception('api 서버 문제');
      }
    } catch (e) {
      //예외 발생
      throw Exception('Failed to load person: $e');
    }
  } //삭제

  //수량수정하기
  Future<void> modifyPerson(int shop_no, int totalcount) async {
    print("3errwrrqwr");
    print(shop_no);
    print(totalcount);
    print("3errwrrqwr");
    try {
      /*----요청처리-------------------*/
      //Dio 객체 생성 및 설정
      var dio = Dio();
      // 헤더설정:json으로 전송
      dio.options.headers['Content-Type'] = 'application/json';

      // 서버 요청
      final response = await dio.put(
        'http://localhost:9011/api/shop/modify/${shop_no}',
        data: {
          // 예시 data map->json자동변경
          'count': totalcount,
        },
      );
      /*----응답처리-------------------*/
      if (response.statusCode == 200) {
        //접속성공 200 이면
        print(response.data); // json->map 자동변경
        //return PersonVo.fromJson(response.data["apiData"]);
        setState(() {
          shopListFuture = getShopList();
        });
      } else {
        //접속실패 404, 502등등 api서버 문제
        throw Exception('api 서버 문제');
      }
    } catch (e) {
      //예외 발생
      throw Exception('Failed to load person: $e');
    }
  } //deletePerson()

  //음료타입수정하기
  Future<void> updateHI(int shop_no, int hiNo) async {
    print("hhhiiiii");
    print(shop_no);
    print(hiNo);
    print("hihihih");
    try {
      /*----요청처리-------------------*/
      //Dio 객체 생성 및 설정
      var dio = Dio();
      // 헤더설정:json으로 전송
      dio.options.headers['Content-Type'] = 'application/json';

      // 서버 요청
      final response = await dio.put(
        'http://localhost:9011/api/shop/list/${shop_no}/type',
        data: {
          // 예시 data map->json자동변경
          'hiNo': hiNo,
        },
      );
      /*----응답처리-------------------*/
      if (response.statusCode == 200) {
        //접속성공 200 이면
        print(response.data); // json->map 자동변경
        //return PersonVo.fromJson(response.data["apiData"]);
        setState(() {
          shopListFuture = getShopList();
        });
      } else {
        //접속실패 404, 502등등 api서버 문제
        throw Exception('api 서버 문제');
      }
    } catch (e) {
      //예외 발생
      throw Exception('Failed to load person: $e');
    }
  } //deletePerson()
} //_DasomState
