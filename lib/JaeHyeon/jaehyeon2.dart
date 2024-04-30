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
      body: Container(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                alignment: Alignment.centerLeft,
                child: Text("2024-04-29", style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0xffd6d6d6), style: BorderStyle.solid),
                ),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                width: 380,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                      child: Text("역삼플래티넘", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xff243c84), style: BorderStyle.solid),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                            child: Row(children: [SizedBox(width: 220, child: Text("아메리카노(L)")),
                            SizedBox(width: 60, child: Text("iced")),
                            SizedBox(width: 50, child: Text("1개"))],)
                          ),
                          Container(
                              padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                              child: Row(children: [SizedBox(width: 220, child: Text("카푸치노(L)")),
                                SizedBox(width: 60, child: Text("iced")),
                                SizedBox(width: 50, child: Text("1개"))],)
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
