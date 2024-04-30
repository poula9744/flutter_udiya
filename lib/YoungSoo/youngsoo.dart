import 'dart:math';

import 'package:flutter/material.dart';

class YoungSoo extends StatelessWidget {
  const YoungSoo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
                children: [
                  Container(
                    color: Color(0xffffffff),
                    width: 500,
                    margin: EdgeInsets.all(20),
                    child: TextFormField(
                      // controller: _nameController,
                        decoration: InputDecoration(
                          labelText: '매장',
                          hintText: '매장명을 입력하세요',
                          border: OutlineInputBorder(),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: ElevatedButton(
                        onPressed: () {
                          print("확인");
                          //writePerson();
                        },
                        child: Text("변경")),
                  ),
                ],
              ),
            ),
            const TabBar(
                indicatorColor: Color(0xff243c84),
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                indicatorWeight: 5,
                tabs: [
                  Tab(
                    text: 'UDIYA PICK',
                    height: 50,
                  ),
                  Tab(
                    text: 'Coffee',
                    height: 50,
                  ),
                  Tab(
                    text: 'Tea',
                    height: 50,
                  )
                  , Tab(
                    text: 'Flacks',
                    height: 50,
                  ),
                ]),
            Expanded(
                child: TabBarView(children: [
                  GridView.builder(
                      key: PageStorageKey("GRID_VIEW1"),
                      itemCount: 5,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
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
                                      width: 250,
                                      child: Image.asset("assets/images/coffee/HOT_Decaffeine_Americano.png")
                                  ),
                                  Container(
                                      child: Text("아메리카노")
                                  ),
                                  Container(
                                      child: Text("3,200 원")
                                  ),
                                ],
                              )),
                        );
                      })),
                  GridView.builder(
                      key: PageStorageKey("GRID_VIEW"),
                      itemCount: 15,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                      ),
                      itemBuilder: ((context, index) {
                        List<int> _number = [
                          Random().nextInt(255),
                          Random().nextInt(255),
                          Random().nextInt(255)
                        ];
                        return Container(
                          color: Color.fromRGBO(
                              _number[0], _number[1], _number[2], 1),
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
                                    width: 250,
                                      child: Image.asset("assets/images/coffee/HOT_Decaffeine_Americano.png")
                                  ),
                                  Container(
                                      child: Text("아메리카노")
                                  ),
                                  Container(
                                      child: Text("3,200 원")
                                  ),
                                ],
                              )),
                        );
                      })),
                  GridView.builder(
                      key: PageStorageKey("GRID_VIEW3"),
                      itemCount: 3,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                      ),
                      itemBuilder: ((context, index) {
                        List<int> _number = [
                          Random().nextInt(255),
                          Random().nextInt(255),
                          Random().nextInt(255)
                        ];
                        return Container(
                          color: Color.fromRGBO(
                              _number[0], _number[1], _number[2], 1),
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
                                      width: 250,
                                      child: Image.asset("assets/images/coffee/HOT_Decaffeine_Americano.png")
                                  ),
                                  Container(
                                      child: Text("아메리카노")
                                  ),
                                  Container(
                                      child: Text("3,200 원")
                                  ),
                                ],
                              )),
                        );
                      })),
                  GridView.builder(
                      key: PageStorageKey("GRID_VIEW4"),
                      itemCount: 13,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                      ),
                      itemBuilder: ((context, index) {
                        List<int> _number = [
                          Random().nextInt(255),
                          Random().nextInt(255),
                          Random().nextInt(255)
                        ];
                        return Container(
                          color: Color.fromRGBO(
                              _number[0], _number[1], _number[2], 1),
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
                                      width: 250,
                                      child: Image.asset("assets/images/coffee/HOT_Decaffeine_Americano.png")
                                  ),
                                  Container(
                                      child: Text("아메리카노")
                                  ),
                                  Container(
                                      child: Text("3,200 원")
                                  ),
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
                icon: Icon(Icons.home, color: Color(0xff243c84),),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calculate, color: Color(0xff243c84),),
                label: 'hdd'),
          ],

          //selectedItemColor: Color.fromARGB(255, 197, 142, 233),
          //unselectedItemColor: Colors.grey,

        ),
      ),
    );
  }
}
