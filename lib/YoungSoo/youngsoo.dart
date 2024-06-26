import 'dart:math';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'productVo.dart';

class YoungSoo extends StatelessWidget {
  const YoungSoo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Color(0xff243c84)),
          title: Text(
            "매장주문",
            style: TextStyle(
                fontWeight: FontWeight.w600, color: Color(0xff243c84)),
          ),
        ),

        body: _YoungSoo(),


        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 12.0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Color(0xff243c84),
          unselectedItemColor: Color(0xff9e9e9e),
          onTap: (int index) {
            switch (index) {
              case 0:
                Navigator.popUntil(context, (route) => route.isFirst);
                break;
              case 1:
                Navigator.pushNamed(context, '/jaehyeon3');
                break;
              case 2:
                Navigator.pushNamed(context, '/youngsoo');
                break;
              case 3:
                Navigator.pushNamed(context, '/jaehyeon2');
                break;
              case 4:
                Navigator.pushNamed(context, '/dasom');
                break;
              default:
            }
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color(0xff243c84),
                ),
                label: '홈'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.card_membership,
                  color: Color(0xff243c84),
                ),
                label: '스탬프'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.coffee,
                  color: Color(0xff243c84),
                ),
                label: '주문'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.credit_card,
                  color: Color(0xff243c84),
                ),
                label: '결제 내역'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag,
                  color: Color(0xff243c84),
                ),
                label: '장바구니'),
          ],

          //selectedItemColor: Color.fromARGB(255, 197, 142, 233),
          //unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}

// 등록
class _YoungSoo extends StatefulWidget {
  const _YoungSoo({super.key});

  @override
  State<_YoungSoo> createState() => _YoungSooState();
}

// 할일
class _YoungSooState extends State<_YoungSoo> {
  // 공통 변수
  late Future<List<ProductVo>> productListFuture;

  // 초기화할때
  @override
  void initState() {
    super.initState();
    productListFuture = getProductList(0);
    //print(productListFuture);
  }

  // 그림그리기
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: productListFuture, //Future<> 함수명, 으로 받은 데이타
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('데이터를 불러오는 데 실패했습니다.'));
        } else if (!snapshot.hasData) {
          return Center(child: Text('데이터가 없습니다.'));
        } else {
          //데이터가 있으면

          return Column(
            children: [
              Container(
                color: Color(0xff243c84),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 220,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xfff5f5f5)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                      padding: EdgeInsets.fromLTRB(8, 4, 0, 3),
                      child: Text("강남역점",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color(0xff243c84),
                              fontWeight: FontWeight.w600)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Container(
                        child: ElevatedButton(
                            onPressed: () {
                              print("확인");
                              Navigator.pushNamed(
                                  context, "/youngsoo2");
                              //writePerson();
                            },
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                                backgroundColor: Color(0xffffffff),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ))),
                            child: Text(
                              "변경하기",
                              style: TextStyle(
                                  color: Color(0xff243c84),
                                  fontWeight: FontWeight.w600),
                            )),
                      ),
                    ),
                  ],
                ),
              ),








              TabBar(
                  indicatorColor: Color(0xff243c84),
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                  indicatorWeight: 5,
                  tabs: [
                    Tab(
                      text: "전체",
                      height: 50,
                    ),
                    Tab(
                      text: "Coffee",
                      height: 50,
                    ),
                    Tab(
                      text: "Tea",
                      height: 50,
                    ),
                    Tab(
                      text: "Beverage",
                      height: 50,
                    ),
                    Tab(
                      text: "Flacks",
                      height: 50,
                    ),
                  ],
                  onTap: (index) {
                    if(index == 1) {
                      setState(() {
                        productListFuture = getProductList(1);
                        print("test1");
                      });

                    }else if (index == 2) {
                      setState(() {
                        productListFuture = getProductList(2);
                        print("test2");
                      });
                    }else if (index == 3) {
                      setState(() {
                        productListFuture = getProductList(3);
                        print("test3");
                      });
                    }else if (index == 4) {
                      setState(() {
                        productListFuture = getProductList(4);
                        print("test4");
                      });
                    }else if (index == 0) {
                      setState(() {
                        productListFuture = getProductList(0);
                        print("test0");
                      });
                    }

                },
              ),
              Expanded(
                  child: TabBarView(children: [

                GridView.builder(
                    key: PageStorageKey("GRID_VIEW1"),
                    itemCount: snapshot.data!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Center(
                            child: Column(
                          children: [
                            Container(
                              width: 90,
                              child: IconButton(
                                icon: Image.asset('assets/images/${snapshot.data![index].picture}'),
                                onPressed: () {

                                  print("page이동");

                                  Navigator.pushNamed(
                                    context,
                                    "/subin",
                                    arguments: {
                                      "cate_no": snapshot.data![index].cate_no,
                                      "product_no": snapshot.data![index].product_no
                                    },
                                  );
                                },
                              ),
                            ),
                            Container(child: Text("${snapshot.data![index].productname}")),
                            Container(child: Text("${snapshot.data![index].size}")),
                            Container(child: Text("${snapshot.data![index].price} 원")),
                          ],
                        )),
                      );
                    }
                    ),


                    GridView.builder(
                        key: PageStorageKey("GRID_VIEW2"),
                        itemCount: snapshot.data!.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Center(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 90,
                                      child: IconButton(
                                        icon: Image.asset('assets/images/${snapshot.data![index].picture}'),
                                        onPressed: () {

                                          print("page이동");

                                          Navigator.pushNamed(
                                            context,
                                            "/subin",
                                            arguments: {
                                              "cate_no": snapshot.data![index].cate_no,
                                              "product_no": snapshot.data![index].product_no
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Container(child: Text("${snapshot.data![index].productname}")),
                                    Container(child: Text("${snapshot.data![index].size}")),
                                    Container(child: Text("${snapshot.data![index].price} 원")),
                                  ],
                                )),
                          );
                        }
                    ),
                    GridView.builder(
                        key: PageStorageKey("GRID_VIEW3"),
                        itemCount: snapshot.data!.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Center(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 90,
                                      child: IconButton(
                                        icon: Image.asset('assets/images/${snapshot.data![index].picture}'),
                                        onPressed: () {

                                          print("page이동");

                                          Navigator.pushNamed(
                                            context,
                                            "/subin",
                                            arguments: {
                                              "cate_no": snapshot.data![index].cate_no,
                                              "product_no": snapshot.data![index].product_no
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Container(child: Text("${snapshot.data![index].productname}")),
                                    Container(child: Text("${snapshot.data![index].size}")),
                                    Container(child: Text("${snapshot.data![index].price} 원")),
                                  ],
                                )),
                          );
                        }
                    ),
                    GridView.builder(
                        key: PageStorageKey("GRID_VIEW4"),
                        itemCount: snapshot.data!.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Center(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 90,
                                      child: IconButton(
                                        icon: Image.asset('assets/images/${snapshot.data![index].picture}'),
                                        onPressed: () {

                                          print("page이동");

                                          Navigator.pushNamed(
                                            context,
                                            "/subin",
                                            arguments: {
                                              "cate_no": snapshot.data![index].cate_no,
                                              "product_no": snapshot.data![index].product_no
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Container(child: Text("${snapshot.data![index].productname}")),
                                    Container(child: Text("${snapshot.data![index].size}")),
                                    Container(child: Text("${snapshot.data![index].price} 원")),
                                  ],
                                )),
                          );
                        }
                    ),
                    GridView.builder(
                        key: PageStorageKey("GRID_VIEW5"),
                        itemCount: snapshot.data!.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Center(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 90,
                                      child: IconButton(
                                        icon: Image.asset('assets/images/${snapshot.data![index].picture}'),
                                        onPressed: () {

                                          print("page이동");

                                          Navigator.pushNamed(
                                            context,
                                            "/subin",
                                            arguments: {
                                              "cate_no": snapshot.data![index].cate_no,
                                              "product_no": snapshot.data![index].product_no
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Container(child: Text("${snapshot.data![index].productname}")),
                                    Container(child: Text("${snapshot.data![index].size}")),
                                    Container(child: Text("${snapshot.data![index].price} 원")),
                                  ],
                                )),
                          );
                        }
                    ),
              ]))
            ],
          );
        } // 데이터가있으면
      },
    );
  }

  //리스트가져오기 dio통신
  Future<List<ProductVo>> getProductList(int cate_no) async {
    try {
      /*----요청처리-------------------*/
      //Dio 객체 생성 및 설정
      var dio = Dio();

      // 헤더설정:json으로 전송
      dio.options.headers['Content-Type'] = 'application/json';

      // 서버 요청
      final response = await dio.get(
        'http://localhost:9011/api/product/list/${cate_no}',
      );

      /*----응답처리-------------------*/
      if (response.statusCode == 200) {
        //접속성공 200 이면
        //print(response.data); // json->map 자동변경
        //print(response.data.length); // json->map 자동변경
        //print(response.data[0]); // json->map 자동변경
        //return PersonVo.fromJson(response.data["apiData"]);
        //print(response.data[0].productname);

        List<ProductVo> productList = [];
        for (int i = 0; i < response.data.length; i++) {
          ProductVo productVo = ProductVo.fromJson(response.data[i]);
          productList.add(productVo);
        }
        print(productList.length);
        return productList;
      } else {
        //접속실패 404, 502등등 api서버 문제
        throw Exception('api 서버 문제');
      }
    } catch (e) {
      //예외 발생
      throw Exception('Failed to load person: $e');
    }
  } //getProductList()
}
