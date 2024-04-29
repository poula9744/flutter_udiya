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
                      text: 'List',
                      height: 50,
                    ),
                    Tab(
                      text: 'Grid',
                      height: 50,
                    ),
                    Tab(
                      text: 'Box',
                      height: 50,
                    )
                    ,Tab(
                      text: 'Box2',
                      height: 50,
                    ),
                  ]),
              Expanded(
                  child: TabBarView(children: [
                ListView.builder(
                    key: const PageStorageKey("LIST_VIEW"),
                    itemCount: 1000,
                    itemBuilder: (context, index) {
                      return Container(
                        color: Color(0xff9e9e9e),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        width: MediaQuery.of(context).size.width,
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
                GridView.builder(
                    key: const PageStorageKey("GRID_VIEW"),
                    itemCount: 15,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(child: Text("아메리카노")),
                            Container(child: Text("3,200 원")),
                          ],
                        )),
                      );
                    })),
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
                    Container(
                      width: 10,
                      color: const Color.fromRGBO(91, 91, 91, 1),
                      child: const Center(
                        child: Text(
                          'Box2',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 56,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
              ]))
            ],
          )),
    );
  }
}
