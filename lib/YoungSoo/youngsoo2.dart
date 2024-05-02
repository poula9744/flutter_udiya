import 'dart:math';
import 'dart:ui' as ui;
import 'dart:html';


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
          title: Text("매장 선택", style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff243c84))),
          actions: [
            IconButton(
                onPressed: () {
                  print("장바구니 클릭");
                  Navigator.pushNamed(context, "/dasom");
                },
                icon: Icon(Icons.shopping_bag)),
            IconButton(
                onPressed: () {
                  print("홈으로");
                  Navigator.pushNamed(context, "/home");
                },
                icon: Icon(Icons.home))
          ],
        ),
        body: _YoungSoo2(),
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
                Navigator.popUntil(context, (route) => route.isFirst);
                break;
              case 1:
                Navigator.pushNamed(context, '/jaehyeon3');
                break;
              case 2:
                Navigator.pushNamed(context, '/youngsoo');
                break;
              case 3:
                Navigator.pushNamed(context, '/jaehyeon2');
                break;
              case 4:
                Navigator.pushNamed(context, '/dasom');
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
      ),
    );
  }
}


class _YoungSoo2 extends StatefulWidget {
  const _YoungSoo2({super.key});

  @override
  State<_YoungSoo2> createState() => _YoungSoo2State();
}

class _YoungSoo2State extends State<_YoungSoo2> {
  @override
  void initState() {
    // assets/map.html에서 작성한 네이버 지도 API 호출 후
    // 응답받은 iframe을 IFrameElement라는 Flutter Widget으로 등록
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'naver-map',
          (int viewId) => IFrameElement()
        ..style.width = '100%'
        ..style.height = '100%'
        ..src = 'assets/map.html'
        ..style.border = 'none',
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color(0xff243c84),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 220,
                height: 30,
                margin: EdgeInsets.fromLTRB(20, 20, 0, 20),
                padding: EdgeInsets.fromLTRB(5, 6, 0, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xfff5f5f5)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  // controller: _nameController,
                    decoration: InputDecoration(
                      hintText: '매장명을 입력하세요',
                      border: InputBorder.none,
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 20, 0, 20),
                child: ElevatedButton(
                    onPressed: () {
                      print("확인");
                      //writePerson();
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                        backgroundColor: Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )
                        )
                    ),
                    child: Text("검색", style: TextStyle(color: Color(0xff243c84), fontWeight: FontWeight.w600))),
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
              Icon(Icons.location_on),
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
                                    Icon(Icons.star_border_rounded, size: 20)
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
                child: Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    // 등록된 IFrameElement Widget들 중
                    //'naver-map'라는 이름을 가진 개체를 Widget으로 임베딩
                    child: HtmlElementView(viewType: 'naver-map'),
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
                                    Icon(Icons.star_border_rounded, size: 20)
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
    );
  }
}
