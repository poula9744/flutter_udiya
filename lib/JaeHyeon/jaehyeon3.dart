import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JeaHyeon3 extends StatelessWidget {
  const JeaHyeon3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff243c84)),
        title: Text("스탬프 & 쿠폰함", style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff243c84))),
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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "****님 스탬프 현황",
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
              "어디야 스탬프",
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
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          width: 180,
                          child: Text(
                            "사용가능한 스탬프 수",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Container(
                            width: 30,
                            child: Image.asset("assets/images/coffee.jpg")),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "00개",
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
              width: 235,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Row(
                children: [
                  Container(
                    child: Text("스탬프   "),
                  ),
                  Container(
                    width: 30,
                    child: Image.asset("assets/images/coffee.jpg"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xff000000),
                              style: BorderStyle.solid)),
                    ),
                    child: Text(
                      "10개",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Container(
                    child: Text("로 교환해보세요"),
                  )
                ],
              )),
          Container(
            child: Text("아메리카노(L) 3,000원 할인쿠폰"),
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
                Navigator.pushNamed(context, '/youngsoo');
              },
              child: Text(
                "주문하러 가기",
                style: TextStyle(color: Color(0xffffffff), fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
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
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/youngsoo');
              break;
            case 2:
              Navigator.pushNamed(context, '/youngsoo');
              break;
            case 3:
              Navigator.pushNamed(context, '/youngsoo');
              break;
            case 4:
              Navigator.pushNamed(context, '/youngsoo');
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
