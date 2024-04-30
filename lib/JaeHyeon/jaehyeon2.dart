import 'package:flutter/material.dart';

class JeaHyeon2 extends StatelessWidget {
  const JeaHyeon2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff243c84)),
        title: Text("주문 내역"),
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
      body: SingleChildScrollView(
          child: Container(
        height: 620,
        color: Color(0xfff3f3f3),
        child: Row(
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
                          "assets/images/coffee/HOT_cafe_americano.png")),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 25, 20, 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                child: Text("역삼스타필드점"),
                              )
                            ],
                          ),
                          Container(
                            child: Text("아메리카노"),
                          ),
                          Container(
                            child: Text("외 1개"),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Color(0xff9d9d9d),
                                          style: BorderStyle.solid)),
                                ),
                                child: Text(
                                  "주문",
                                  style: TextStyle(color: Color(0xff9d9d9d)),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "2024-04-30",
                                  style: TextStyle(color: Color(0xff9d9d9d)),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 25, 20, 20),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                          width: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xff243c84))),
                          child: Text("픽업완료", style: TextStyle(color: Color(0xff243c84)),),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                          child: Text(
                            "결제금액",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            "300000원",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
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
