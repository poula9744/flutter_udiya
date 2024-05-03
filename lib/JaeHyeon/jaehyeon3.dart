import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'JhVo2.dart';

class JeaHyeon3 extends StatelessWidget {
  const JeaHyeon3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff243c84)),
        title: Text("마일리지", style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff243c84))),
        actions: [
          IconButton(
              onPressed: () {
                print("장바구니 클릭");
                Navigator.pushNamed(context, "/dasom");
              },
              icon: Icon(Icons.shopping_bag)),
          IconButton(
              onPressed: () {
                print("홈으로");
              },
              icon: Icon(Icons.home))
        ],
      ),
      body: _mile(),
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

class _mile extends StatefulWidget {
  const _mile({super.key});

  @override
  State<_mile> createState() => _mileState();
}

class _mileState extends State<_mile> {

  late Future<JhVo2> jh2;

  @override
  void initState() {
    super.initState();
    jh2 = _getmile();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: jh2, //Future<> 함수명, 으로 받은 데이타
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
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "${snapshot.data!.nick}님 마일리지 현황",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                  child: Text(
                    "모을수록 혜택이 커지는",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(50, 5, 0, 25),
                  child: Text(
                    "어디야 마일리지",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  decoration: BoxDecoration(
                      color: Color(0xfff3f3f3),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xff8a8a8a),
                                  style: BorderStyle.solid)
                          ),
                        ),
                        width: 305,
                        margin: EdgeInsets.fromLTRB(15, 3, 15, 0),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                width: 180,
                                child: Text(
                                  "사용가능한 마일리지 포인트",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              Container(
                                  width: 30,
                                  child: Image.asset("assets/images/coffee.jpg")),
                              Container(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Text(
                                  "${snapshot.data!.mile}원",
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 9, 0, 0),
                        width: 300,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "사용내역 확인하기",
                            style: TextStyle(
                                color: Color(0xff424242),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    width: 280,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          alignment: Alignment.center,
                          child: Text("마일리지를 "),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 20,
                          child: Image.asset("assets/images/coffee.jpg"),
                        ),
                        Container(
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xff000000),
                                    style: BorderStyle.solid)),
                          ),
                          child: Text(
                            "${snapshot.data!.mile}원",
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Container(
                          width: 80,
                          alignment: Alignment.center,
                          child: Text("사용하세요"),
                        )
                      ],
                    )),
                Container(
                  child: Text("아메리카노(L) 3,000원"),
                ),
                Container(
                  width: 180,
                  child: Image.asset("assets/images/coffee/HOT_cafe_americano.png"),
                ),
                Container(
                  width: 240,
                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(0xff243C84),),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/youngsoo");
                    },
                    child: Text(
                      "주문하러 가기",
                      style: TextStyle(color: Color(0xffffffff), fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            );
          }
        });;
  }

  Future<JhVo2> _getmile() async {
    try {
/*----요청처리-------------------*/
//Dio 객체 생성및 설정
      var dio = Dio();
// 헤더설정:json으로 전송
      dio.options.headers['Content-Type'] = 'application/json';
// 서버 요청
      final response = await dio.get
        ('http://localhost:9011/api/mile');

/*----응답처리-------------------*/
      if (response.statusCode == 200) {
//접속성공 200 이면
        print(response.data); // json->map 자동변경
        return JhVo2.fromJson(response.data["apiData"]);}
      else {
//접속실패 404, 502등등 api서버 문제
        throw Exception('api 서버 문제');}
    } catch (e) {
//예외 발생
      throw Exception('Failed to load person: $e');
    }
  }
}

