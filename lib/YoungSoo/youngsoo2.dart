import 'dart:math';

import 'package:flutter/material.dart';

class YoungSoo2 extends StatelessWidget {
  const YoungSoo2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Color(0xff243c84)),
          title: Text("매장 선택"),
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
                    width: 230,
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
                        child: Text("검색")),
                  ),
                ],
              ),
            ),
            const TabBar(
                indicatorColor: Color(0xff243c84),
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 11),
                indicatorWeight: 5,
                tabs: [
                  Tab(
                    text: '가까운 매장',
                    height: 50,
                  ),
                  Tab(
                    text: '지도로 선택',
                    height: 50,
                  ),
                  Tab(
                    text: '나의 매장',
                    height: 50,
                  )
                  ,
                ]),
            Expanded(
                child: TabBarView(children: [
                  ListView.builder(
                      key: const PageStorageKey("LIST_VIEW1"),
                      itemCount: 1000,
                      itemBuilder: (context, index) {
                        return Container(
                          color: Color(0xffdbdbdb),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          child: Center(
                            child: Text(
                              "List View $index",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.accents[index % 15],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      }),
                  Container(
                    width: 10,
                    color: const Color.fromRGBO(91, 91, 91, 1),
                    child: const Center(
                      child: Text(
                        'Box',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 56,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ListView.builder(
                      key: const PageStorageKey("LIST_VIEW2"),
                      itemCount: 1000,
                      itemBuilder: (context, index) {
                        return Container(
                          color: Color(0xff9e9e9e),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          child: Center(
                            child: Text(
                              "List View $index",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.accents[index % 15],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      }),


                ]))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, '/');
                break;
              case 1:
                Navigator.pushNamed(context, '/');
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
