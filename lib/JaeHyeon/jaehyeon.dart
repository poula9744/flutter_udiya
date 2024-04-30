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
                      onPressed: () {},
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
                        onPressed: () {},
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
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/subin');
              break;
            case 1:
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
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calculate,
                color: Color(0xff243c84),
              ),
              label: 'hdd'),
        ],

        //selectedItemColor: Color.fromARGB(255, 197, 142, 233),
        //unselectedItemColor: Colors.grey,
      ),
    );
  }
}
