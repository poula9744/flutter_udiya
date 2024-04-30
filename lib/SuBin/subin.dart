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
          IconButton(onPressed: (){
            print("장바구니 클릭");
          }, icon: Icon(Icons.shopping_bag)),
          IconButton(onPressed: (){
            print("홈으로");
          }, icon: Icon(Icons.home))
        ],
      ),
      body: Container(
        width: 1080,
        height: 1920,
        child: SingleChildScrollView(
          child:Column(
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
                    fit:BoxFit.cover),
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
                child: Text("NEW", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xffffffff)),),

              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    width: 320,
                    height: 40,
                    child: Text("피스타치오 매직팝 플랫치노", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.share, size: 30,)),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 5),
                alignment: Alignment.centerLeft,
                width: 900,
                height: 20,
                child: Text("ICED Only", style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic, color: Color(0xff243c84)),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                alignment: Alignment.centerLeft,
                width: 350,
                height: 55,
                child: Text("입안 가득 톡톡 튀는 알록달록 팝핑캔디의 재미와 고소한 피스타치오의 풍미가 특징인 제품", style: TextStyle(fontSize: 15),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                alignment: Alignment.centerLeft,
                width: 600,
                height: 40,
                child: Text("4500원", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 0, 20),
                width: 370,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xff243c84)
                ),
                child: Text("주문하기", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xffffffff)),),
              ),
            ],
          ),

        ),
        ),
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
              Navigator.pushNamed(context, '/');
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
    );
  }
}
