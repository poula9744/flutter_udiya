import 'dart:math';

import 'package:flutter/material.dart';

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
          title: Text("매장 주문"),
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
        body: Column(
          children: [
            Container(
              color: Color(0xff243c84),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Color(0xffffffff),
                    width: 200,
                    margin: EdgeInsets.all(20),
                    child: Text("역삼플래티넘점"),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: ElevatedButton(
                        onPressed: () {
                          print("확인");
                          //writePerson();
                        },
                        child: Text("변경하기")),
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
                    text: 'Pick',
                    height: 50,
                  ),
                  Tab(
                    text: 'Coffee',
                    height: 50,
                  ),
                  Tab(
                    text: 'Tea',
                    height: 50,
                  ),
                  Tab(
                    text: 'Beverage',
                    height: 50,
                  ),
                  Tab(
                    text: 'Flacks',
                    height: 50,
                  ),
                ]),
            Expanded(
                child: TabBarView(children: [
              GridView.builder(
                  key: PageStorageKey("GRID_VIEW1"),
                  itemCount: 5,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: ((context, index) {
                    return Container(
                      color: Color(0xfff5f5f5),
                      child: Center(
                          child: Column(
                        children: [
                          Container(
                            color: Color(0xff243c84),
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "카페인/디카페인",
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                              width: 100,
                              child: Image.asset(
                                  "assets/images/coffee/HOT_Decaffeine_Americano.png")),
                          Container(child: Text("아메리카노")),
                          Container(child: Text("3,200 원")),
                        ],
                      )),
                    );
                  })),
              GridView.builder(
                  key: PageStorageKey("GRID_VIEW2"),
                  itemCount: 15,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: ((context, index) {
                    return Container(
                      color: Color(0xfff5f5f5),
                      child: Center(
                          child: Column(
                        children: [
                          Text(
                            "Grid View $index",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                              width: 100,
                              child: Image.asset(
                                  "assets/images/coffee/HOT_Decaffeine_Americano.png")),
                          Container(child: Text("아메리카노")),
                          Container(child: Text("3,200 원")),
                        ],
                      )),
                    );
                  })),
              GridView.builder(
                  key: PageStorageKey("GRID_VIEW3"),
                  itemCount: 3,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: ((context, index) {
                    return Container(
                      color: Color(0xfff5f5f5),
                      child: Center(
                          child: Column(
                        children: [
                          Text(
                            "Grid View $index",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                              width: 100,
                              child: Image.asset(
                                  "assets/images/coffee/HOT_Decaffeine_Americano.png")),
                          Container(child: Text("아메리카노")),
                          Container(child: Text("3,200 원")),
                        ],
                      )),
                    );
                  })),
              GridView.builder(
                  key: PageStorageKey("GRID_VIEW4"),
                  itemCount: 13,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: ((context, index) {
                    return Container(
                      color: Color(0xfff5f5f5),
                      child: Center(
                          child: Column(
                        children: [
                          Text(
                            "Grid View $index",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                              width: 100,
                              child: Image.asset(
                                  "assets/images/coffee/HOT_Decaffeine_Americano.png")),
                          Container(child: Text("아메리카노")),
                          Container(child: Text("3,200 원")),
                        ],
                      )),
                    );
                  })),
              GridView.builder(
                  key: PageStorageKey("GRID_VIEW5"),
                  itemCount: 2,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: ((context, index) {
                    return Container(
                      color: Color(0xfff5f5f5),
                      child: Center(
                          child: Column(
                        children: [
                          Text(
                            "Grid View $index",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                              width: 100,
                              child: Image.asset(
                                  "assets/images/coffee/HOT_Decaffeine_Americano.png")),
                          Container(child: Text("아메리카노")),
                          Container(child: Text("3,200 원")),
                        ],
                      )),
                    );
                  })),
            ]))
          ],
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
      ),
    );
  }
}
