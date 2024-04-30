import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class JaeHyeon extends StatelessWidget {
  const JaeHyeon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff243c84)),
        title: Text("주문 완료", style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff243c84))),
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
      body: Container(
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
                "18",
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
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff243C84),
                    ),
                    margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
                    width: 150,
                    height: 40,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/");
                      },
                      child: Text(
                        "홈으로",
                        style: TextStyle(color: Color(0xffffffff), fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    )),
                Container(
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xff243C84),),
                    margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
                    width: 150,
                    height: 40,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/jaehyeon2");
                        },
                        child: Text(
                          "주문내역",
                          style: TextStyle(color: Color(0xffffffff), fontSize: 16, fontWeight: FontWeight.w600),
                        ))),
              ],
            )
          ],
        ),
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
