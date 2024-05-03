import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'ksbVo.dart';

class SuBin extends StatelessWidget {
  const SuBin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff243c84)),
        title: Text("매장 주문"),
        actions: [
          IconButton(
              onPressed: () {
                print("장바구니 클릭");
              },
              icon: Icon(Icons.shopping_bag)),
          IconButton(
              onPressed: () {
                print("홈으로");
              },
              icon: Icon(Icons.home))
        ],
      ),
      body: _SuBin(),
    );
  }
}

class _SuBin extends StatefulWidget {
  const _SuBin({super.key});

  @override
  State<_SuBin> createState() => _SuBinState();
}

//할일 정의
class _SuBinState extends State<_SuBin> {
  //변수(미래의 데이터 담기)
  late Future<KsbVo> KsbVoFuture;

  late int count = 0;
  late int hi = -1;
  int _product_no = 0;

  //cate_no, product_no 키를 사용하여 값을 추출
  late final int cate_no ;
  late final int product_no ;


  //초기화 함수(1번만 실행됨)
  @override
  void initState() {
    super.initState();

    //추가 코드 아래에 작성
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // context를 안전하게 사용할 수 있는 첫 시점
      final args = ModalRoute.of(context)!.settings.arguments as Map;


      setState(() {
        cate_no = args['cate_no'];
        product_no = args['product_no'];

        KsbVoFuture = getProductByNo(cate_no, product_no);
      });

    });
  }

  @override
  Widget build(BuildContext context) {
    //라우터로 전달받은 cate_no, product_no
    //late final args = ModalRoute.of(context)!.settings.arguments as Map;

    //cate_no, product_no 키를 사용하여 값을 추출
    //late final cate_no = args['cate_no'];
    //late final product_no = args['product_no'];
    //KsbVoFuture = getProductByNo(cate_no, product_no);

    //print(cate_no);
    //print(product_no);
    return FutureBuilder(
      future: KsbVoFuture, //Future<> 함수명, 으로 받은 데이타
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('데이터를 불러오는데 실패했습니다.'));
        } else if (!snapshot.hasData) {
          return Center(child: Text('데이터가 없습니다.'));
        } else {
          //데이터가 있으면 _nameController.text = snapshot.data!.name;

          _product_no = snapshot.data!.product_no!;

          return Container(
            width: 1080,
            height: 1920,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
                    alignment: Alignment.center,
                    child: Image.asset(
                        width: 400,
                        height: 400,
                        'assets/images/${snapshot.data!.picture}',
                        fit: BoxFit.cover),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 0, 10),
                    width: 50,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.5),
                      color: Color(0xff243c84),
                    ),
                    child: Text(
                      "NEW",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffffff)),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        width: 200,
                        height: 40,
                        child: Text(
                          "${snapshot.data!.productname}" +
                              "(${snapshot.data!.size})",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share_outlined,
                              size: 30,
                            )),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 5),
                    alignment: Alignment.centerLeft,
                    width: 900,
                    height: 20,
                    child: Text(
                      "ICED Only",
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          color: Color(0xff243c84)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    alignment: Alignment.centerLeft,
                    width: 350,
                    height: 55,
                    child: Text(
                      "${snapshot.data!.text}",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                    alignment: Alignment.centerLeft,
                    width: 600,
                    height: 40,
                    child: Text(
                      "${snapshot.data!.price}원",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 10, 0, 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff243c84),
                        ),
                        width: 100,
                        child: Row(
                          children: [
                            Container(
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    count--;
                                  });
                                },
                                icon: Icon(Icons.remove),
                                color: Color(0xffffffff),
                              ),
                            ),
                            Container(
                              child: Text(
                                "${count}",
                                style: TextStyle(
                                    color: Color(0xffffffff), fontSize: 18),
                              ),
                            ),
                            Container(
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    count++;
                                  });
                                },
                                icon: Icon(Icons.add),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(160, 0, 0, 0),
                        child: Text(
                          "${snapshot.data!.price}" + "원",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 400,
                    height: 160,
                    color: Color(0xffffffff),
                    child: Column(
                      children: <Widget>[
                        // 라디오 그룹
                        RadioListTile(
                          dense: true,
                          value: 1,
                          groupValue: hi,
                          onChanged: (value) {
                            setState(() {
                              hi = value!;
                              print(hi);
                            });
                          },
                          title: Text('Hot'),
                          activeColor: Color(0xff243c84),
                        ),
                        RadioListTile(
                          dense: true,
                          value: 2,
                          groupValue: hi,
                          onChanged: (value) {
                            setState(() {
                              hi = value!;
                              print(hi);
                            });
                          },
                          title: Text('ICED'),
                          activeColor: Color(0xff243c84),
                        ),
                      ],
                    ),


                  ),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(45, 10, 10, 10),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              addCart();

                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text("장바구니"),
                                      content:
                                          Text("장바구니에 담았습니다. 다른 메뉴를 보시겠습니까?"),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              //print(count);
                                              Navigator.pushNamed(context, "/dasom");
                                            },
                                            child: Text("장바구니 가기")),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                  context, "/youngsoo");
                                            },
                                            child: Text("다른 메뉴 보러가기")),
                                      ],
                                    );
                                  });
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Color(0xff243c84),
                              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                            ),
                            child: Text(
                              "장바구니",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xffffffff),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              print(_product_no);
                              Navigator.pushNamed(
                                context,
                                "/eunbin0",
                                arguments: {
                                  "product_no": _product_no,
                                  "hi_no": hi,
                                  "count": count
                                },

                              );
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Color(0xff243c84),
                              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                            ),
                            child: Text(
                              "주문하기",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xffffffff),
                              ),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          );
        } // 데이터가있으면
      },
    );
  }

  Future<KsbVo> getProductByNo(int cate_no, int product_no) async {
    try {
      /*----요청처리-------------------*/
      //Dio 객체 생성 및 설정
      var dio = Dio();
      // 헤더설정:json으로 전송
      dio.options.headers['Content-Type'] = 'application/json';
      // 서버 요청
      final response = await dio.get(
        'http://localhost:9011/api/udiya/detail/${cate_no}/${product_no}',
      );
      /*----응답처리-------------------*/
      if (response.statusCode == 200) {
        //접속성공 200 이면
        //print(response.data); // json->map 자동변경
        //print("========================="); // json->map 자동변경
        //print(KsbVo.fromJson(response.data));
        //print("========================="); // json->map 자동변경
        return KsbVo.fromJson(response.data);
      } else {
        //접속실패 404, 502등등 api서버 문제
        throw Exception('api 서버 문제');
      }
    } catch (e) {
      //예외 발생
      throw Exception('Failed to load person: $e');
    }
  }

  Future<int> addCart() async {
    try {
      /*----요청처리-------------------*/
      //Dio 객체 생성 및 설정
      var dio = Dio();
      // 헤더설정:json으로 전송
      dio.options.headers['Content-Type'] = 'application/json';

      var data= {
        // 예시 data map->json자동변경
        "product_no": _product_no,
        "count": count,
        "hi": hi,
      };

      print(data);
      // 서버 요청
      final response = await dio.post(
        'http://localhost:9011/api/udiya/addCart',
        data: {
          // 예시 data map->json자동변경
          "product_no": _product_no,
          "count": count,
          "hi_no": hi,
        },
      );

      /*----응답처리-------------------*/
      if (response.statusCode == 200) {
        //접속성공 200 이면
        //print(response.data); // json->map 자동변경

        return response.data;
      } else {
        //접속실패 404, 502등등 api서버 문제
        throw Exception('api 서버 문제');
      }
    } catch (e) {
      //예외 발생
      throw Exception('Failed to load person: $e');
    }
  }
}



///////////////////////////////////////////////////////////////////
