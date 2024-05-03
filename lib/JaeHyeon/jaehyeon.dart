import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dio/dio.dart';

class JaeHyeon extends StatelessWidget {
  const JaeHyeon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff243c84)),
        title: Text("주문 완료",
            style: TextStyle(
                fontWeight: FontWeight.w600, color: Color(0xff243c84))),
      ),
      body: _pick(),
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
              Navigator.pushNamed(context, '/jaehyeon');
              break;
            case 2:
              Navigator.pushNamed(context, '/youngsoo');
              break;
            case 3:
              Navigator.pushNamed(context, '/jaehyeon3');
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

class _pick extends StatefulWidget {
  const _pick({super.key});

  @override
  State<_pick> createState() => _pickState();
}

class _pickState extends State<_pick> {


  late Future<int> a ;

  @override
  void initState() {
    super.initState();
    a  = _getpick();
  }



  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: a, //Future<> 함수명, 으로 받은 데이타
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('데이터를 불러오는 데 실패했습니다.'));
          } else if (!snapshot.hasData) {
            return Center(child: Text('데이터가 없습니다.'));
          } else {
            //데이터가 있으면
            //_nameController.text = snapshot.data!.name;
            return Container(
              width: 411,
              height: 731,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
                    child: Text(
                      "픽업번호",
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "${snapshot.data!}",
                      style: TextStyle(
                          fontSize: 55,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff243c84)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 35, 0, 0),
                    child: Text(
                      "고객님이 주문하신",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    child: Text(
                      "상품을 준비중입니다",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff243C84),
                          ),
                          margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
                          width: 150,
                          height: 40,
                          child: TextButton(
                            onPressed: () {
                              Navigator.popUntil(context, (route) => route.isFirst);
                            },
                            child: Text(
                              "홈으로",
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          )),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff243C84),
                          ),
                          margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
                          width: 150,
                          height: 40,
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/jaehyeon2");
                              },
                              child: Text(
                                "주문내역",
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ))),
                    ],
                  )
                ],
              ),
            );
          }
        });
  }

  Future<int> _getpick() async {
    try {
/*----요청처리-------------------*/
//Dio 객체 생성및 설정
    var dio = Dio();
// 헤더설정:json으로 전송
    dio.options.headers['Content-Type'] = 'application/json';
// 서버 요청
    final response = await dio.get
    ('http://localhost:9011/api/pick');

/*----응답처리-------------------*/
    if (response.statusCode == 200) {
//접속성공 200 이면
    print(response.data); // json->map 자동변경
    return response.data["apiData"];}
    else {
//접속실패 404, 502등등 api서버 문제
    throw Exception('api 서버 문제');}
    } catch (e) {
//예외 발생
    throw Exception('Failed to load person: $e');
    }
  }
}
