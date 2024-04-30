import 'package:flutter/material.dart';

class SuBin extends StatelessWidget {
  const SuBin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        width: 1080,
        height: 1920,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
                alignment: Alignment.center,
                child: Image.asset(
                    width: 400,
                    height: 400,
                    'assets/images/Flatccino/Pistachino_Magic_Pop_Flatccino.png',
                    fit: BoxFit.cover),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 0, 10),
                width: 50,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.5),
                  color: Color(0xff243c84),
                ),
                child: Text(
                  "NEW",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffffffff)),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    width: 320,
                    height: 40,
                    child: Text(
                      "피스타치오 매직팝 플랫치노",
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          size: 30,
                        )),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 5),
                alignment: Alignment.centerLeft,
                width: 900,
                height: 20,
                child: Text(
                  "ICED Only",
                  style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Color(0xff243c84)),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                alignment: Alignment.centerLeft,
                width: 350,
                height: 55,
                child: Text(
                  "입안 가득 톡톡 튀는 알록달록 팝핑캔디의 재미와 고소한 피스타치오의 풍미가 특징인 제품",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                alignment: Alignment.centerLeft,
                width: 600,
                height: 40,
                child: Text(
                  "4500원",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(55, 10, 30, 10),
                      width: 130,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "HOT",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffa81111),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      width: 130,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "ICED",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff3b69ce),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: OutlinedButton(
                      onPressed: () {
                        print("더하기");
                        print(num);
                      },
                      child: Text("+",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff3b69ce),
                          backgroundColor: Colors.white,
                        ),),
                    ),
                  ),
                  Text(
                    "1",
                    style: TextStyle(fontSize: 24),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: OutlinedButton(
                        onPressed: () {
                          print("빼기");
                          print(num);
                        },
                        child: Text("-",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff3b69ce),
                              backgroundColor: Colors.white,
                            ))),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 0, 20),
                width: 370,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xff243c84)),
                child: Text(
                  "주문하기",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffffffff)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
