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
                  ),
                ]),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Row(
                children: [
                  Icon(Icons.location_history),
                  Text("가까운 순서로 정렬합니다"),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(children: [
              ListView.builder(
                  key: const PageStorageKey("LIST_VIEW1"),
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Color(0xffffffff),
                      margin: EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: Center(
                        child: Container(
                          height: 190,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 45,
                                margin: EdgeInsets.fromLTRB(18, 0, 0, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      "역삼플래티넘점",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(Icons.star)
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(

                                    child: Column(
                                      children: [
                                        Container(
                                          width: 180,
                                          height: 40,
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "서울 강남구 역삼동 826-37 쌍용플래티넘상가  B-108",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0xffbfbfbf)
                                                ),
                                          ),
                                        ),
                                        Container(
                                          width: 180,
                                          height: 40,
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: [
                                              Icon(Icons.add),
                                              Text(
                                                "485m",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: Color(0xffffffff),
                                    width: 180,
                                    height: 80,
                                    padding: EdgeInsets.all(10),
                                    alignment: Alignment.centerRight,
                                    child: Image.asset(
                                        width: 50,
                                        height: 50,
                                        'assets/images/profile.jpg',
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 45,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.fromLTRB(0, 0, 18, 0),
                                child: Text(
                                  "매장 정보",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff243c84),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              Container(
                width: 10,
                color: const Color.fromRGBO(91, 91, 91, 1),
                child: const Center(
                  child: Text(
                    'Map',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 56,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
                  ListView.builder(
                      key: const PageStorageKey("LIST_VIEW2"),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          color: Color(0xffffffff),
                          margin: EdgeInsets.all(10),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          child: Center(
                            child: Container(
                              height: 190,
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 45,
                                    margin: EdgeInsets.fromLTRB(18, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "역삼플래티넘점",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(Icons.star)
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(

                                        child: Column(
                                          children: [
                                            Container(
                                              width: 180,
                                              height: 40,
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "서울 강남구 역삼동 826-37 쌍용플래티넘상가  B-108",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xffbfbfbf)
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 180,
                                              height: 40,
                                              alignment: Alignment.centerLeft,
                                              child: Row(
                                                children: [
                                                  Icon(Icons.add),
                                                  Text(
                                                    "485m",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        color: Color(0xffffffff),
                                        width: 180,
                                        height: 80,
                                        padding: EdgeInsets.all(10),
                                        alignment: Alignment.centerRight,
                                        child: Image.asset(
                                            width: 50,
                                            height: 50,
                                            'assets/images/profile.jpg',
                                            fit: BoxFit.cover
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 45,
                                    alignment: Alignment.centerRight,
                                    margin: EdgeInsets.fromLTRB(0, 0, 18, 0),
                                    child: Text(
                                      "매장 정보",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff243c84),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
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
