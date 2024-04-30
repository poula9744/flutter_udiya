import 'dart:js';

import 'package:flutter/material.dart';

class DaSom extends StatelessWidget {
  const DaSom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff243c84)),
        title: Text("장바구니"),
        actions: [
          IconButton(
              onPressed: () {
                print("홈으로");
              },
              icon: Icon(Icons.home))
        ],
      ),
      body: Container(
        width: 1080,
        height: 1920,
        padding: EdgeInsets.all(20),
        color: Color(0xff243c84),
        child: Container(
          height: 400,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(15, 20, 0, 0),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.location_on),
                      onPressed: () {},
                    ),
                    Text(
                      '역삼플래티넘점',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                height: 435,
                child: ListView(
                  children: [
                    Container(
                      width: 1080,
                      color: Color(0xffffffff),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.check_circle),
                                  onPressed: () {},
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    '음료',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Color(0xff9e9e9e),
                            thickness: 2,
                            height: 20,
                          ),
                          ListTile(
                            leading: Image.asset("assets/images/icedchoco.jpg"),
                            title: Text('영수수페셜'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('30,000원'),
                                Text('ICED / Regular / 포장'),
                              ],
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: 400,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Text('옵션추가/변경'),
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: IconButton(
                                          onPressed: () {
                                            print("빼기");
                                          },
                                          icon: Icon(
                                              Icons.indeterminate_check_box)),
                                    ),
                                    Text(
                                      "${num}",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Container(
                                      child: IconButton(
                                          onPressed: () {
                                            print("더하기");
                                          },
                                          icon: Icon(Icons.add_box)),
                                    ),
                                    Container(
                                        child: Text(
                                      "30,000원",
                                      textAlign: TextAlign.end,
                                    ))
                                  ],
                                ),
                                Divider(
                                  color: Color(0xff9e9e9e),
                                  thickness: 1,
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            leading: Image.asset("assets/images/icedchoco.jpg"),
                            title: Text('재현스페셜'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('300,000원'),
                                Text('ICED / Regular / 포장'),
                              ],
                            ),
                            trailing: Icon(Icons.delete),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: 400,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Text('옵션추가/변경'),
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: IconButton(
                                          onPressed: () {
                                            print("빼기");
                                          },
                                          icon: Icon(
                                              Icons.indeterminate_check_box)),
                                    ),
                                    Text(
                                      "${num}",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Container(
                                      child: IconButton(
                                          onPressed: () {
                                            print("더하기");
                                          },
                                          icon: Icon(Icons.add_box)),
                                    ),
                                    Container(
                                        child: Text(
                                      "300,000",
                                      textAlign: TextAlign.end,
                                    ))
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 50),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.check_circle),
                                        onPressed: () {},
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Text(
                                          '푸드',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Color(0xff9e9e9e),
                                  thickness: 2,
                                  height: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 50),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.check_circle),
                                        onPressed: () {},
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Text(
                                          '상품',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Color(0xff9e9e9e),
                                  thickness: 2,
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Column(
                              children: [
                                Container(
                                  width: 200,
                                  margin: EdgeInsets.only(top: 30),
                                  child: OutlinedButton(
                                      onPressed: () {
                                        print("더담기");
                                      },
                                      child: Text("+ 메뉴 더 담기")),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: Color(0xff9e9e9e),
                            thickness: 1,
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          "메뉴금액",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      Container(
                                        color: Colors.white,
                                        width: 240,
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "330,000원",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: Color(0xff9e9e9e),
                            thickness: 1,
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          "총 주문금액",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      Container(
                                        color: Colors.white,
                                        width: 220,
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "330,000원",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: Color(0xff9e9e9e),
                            thickness: 1,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff243c84),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/eunbin');
          },
          child: Text(
            "총 330,000 매장 주문하기",
            style: TextStyle(color: Color(0xffffffff)),
          ),
        ),
      ),

    );
  }
}



