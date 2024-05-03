import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'JhVo.dart';

class JeaHyeon2 extends StatelessWidget {
  const JeaHyeon2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff243c84)),
        title: Text("주문 내역"),
      ),
      body: _history(),
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
    );
  }
}

class _history extends StatefulWidget {
  const _history({super.key});

  @override
  State<_history> createState() => _historyState();
}

class _historyState extends State<_history> {
  late Future<List<JhVo>> jh;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    jh = _hislist();

    return FutureBuilder(
      future: jh, //Future<> 함수명, 으로 받은 데이타
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('데이터를 불러오는 데 실패했습니다.'));
        } else if (!snapshot.hasData) {
          return Center(child: Text('데이터가 없습니다.'));
        } else {
          //데이터가 있으면
          return SingleChildScrollView(
              child: Container(
                  height: 620,
                  color: Color(0xfff3f3f3),
                  child: ListView.builder(
                      itemCount: snapshot
                          .data!.length, //반복될 획수(!는 null 아닐 수 있는 표현을 막아준다)
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(20)),
                              margin: EdgeInsets.all(10),
                              width: 390,
                              height: 130,
                              child: Row(
                                children: [
                                  Container(
                                      width: 100,
                                      child: Image.asset(
                                          "assets/images/${snapshot.data![index].picture}")),
                                  Container(
                                    padding:
                                        EdgeInsets.fromLTRB(20, 25, 20, 20),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: 15,
                                                child: Image.asset(
                                                  "assets/images/mark.jpg",
                                                ),
                                              ),
                                              Container(
                                                child: Text("${snapshot.data![index].franchiseeName}"),
                                              )
                                            ],
                                          ),
                                          Container(
                                            child: Text("${snapshot.data![index].productName}"),
                                          ),
                                          Container(
                                            child: Text(snapshot.data![index].count! > 1 ? "외 ${snapshot.data![index].count-1}개" : ""),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                      right: BorderSide(
                                                          color:
                                                              Color(0xff9d9d9d),
                                                          style: BorderStyle
                                                              .solid)),
                                                ),
                                                child: Text(
                                                  "주문",
                                                  style: TextStyle(
                                                      color: Color(0xff9d9d9d)),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "${snapshot.data![index].selltime}",
                                                  style: TextStyle(
                                                      color: Color(0xff9d9d9d)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.fromLTRB(10, 25, 20, 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          width: 70,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Color(0xffffffff),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Color(0xff243c84))),
                                          child: Text(
                                            "픽업완료",
                                            style: TextStyle(
                                                color: Color(0xff243c84)),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(13, 0, 0, 0),
                                          child: Text(
                                            "결제금액",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 10, 0, 0),
                                          child: Text(
                                            "${snapshot.data![index].total}원",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      })));
        } // 데이터가있으면
      },
    );
  }

  Future<List<JhVo>> _hislist() async {
    try {
      /*----요청처리-------------------*/
      //Dio 객체 생성및 설정
      var dio = Dio();
      // 헤더설정:json으로 전송
      dio.options.headers['Content-Type'] = 'application/json';
      // 서버 요청
      final response = await dio.get('http://localhost:9011/api/orderlist');

      /*----응답처리-------------------*/
      if (response.statusCode == 200) {
        //접속성공 200 이면
        print(response.data); // json->map 자동변경
        List<JhVo> hList = [];
        for (int i = 0; i < response.data["apiData"].length; i++) {
          //map -> {}
          JhVo j = JhVo.fromJson(response.data["apiData"][i]);
          //[{}, {}, {}]
          hList.add(j);
        }
        print(hList);
        return hList;
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
