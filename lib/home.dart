import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("UDIYA",style: TextStyle(color: Color(0xff243c84), fontWeight: FontWeight.bold),),
          iconTheme: IconThemeData(color: Color(0xff243c84)),
          actions: [
            IconButton(onPressed: (){
              print("QR코드 클릭");
            }, icon: Icon(Icons.qr_code)),
          ]),
      body: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(25, 5, 0, 0),
                      child: Text("추억의 달달커피로", style: TextStyle(fontSize: 20),),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                        child: Text("달달-한 당 충전 시간", style: TextStyle(fontSize: 20),)
                    ),
                    Container(
                        child: Icon(Icons.favorite,color: Color(0xffb40000))
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child:
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      width: 320 ,
                      height: 160,
                      'assets/images/main_banner.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(45, 15, 20, 0),
                      child: IconButton(onPressed: (){print("간편주문");}, icon: Icon(Icons.phone, color: Color(0xff243c84),size: 30,)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 20, 0),
                      child: IconButton(onPressed: (){print("매장주문");}, icon: Icon(Icons.store, color: Color(0xff243c84),size: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 20, 0),
                      child: IconButton(onPressed: (){print("배달주문");}, icon: Icon(Icons.local_shipping, color: Color(0xff243c84),size: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 20, 0),
                      child: IconButton(onPressed: (){print("선물하기");}, icon: Icon(Icons.redeem, color: Color(0xff243c84),size: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 20, 0),
                      child: IconButton(onPressed: (){print("월렛");}, icon: Icon(Icons.wallet, color: Color(0xff243c84),size: 30)),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 0, 22, 0),
                      child: Text("간편주문", style: TextStyle(fontSize: 10),),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
                      child: Text("매장주문", style: TextStyle(fontSize: 10)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 27, 0),
                      child: Text("배달주문", style: TextStyle(fontSize: 10)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 35, 0),
                      child: Text("선물하기", style: TextStyle(fontSize: 10)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
                      child: Text("월렛", style: TextStyle(fontSize: 10)),
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child:
                  ClipRRect(
                    child: Image.asset(
                      width: 411 ,
                      height: 140,
                      'assets/images/main_IMG.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                  child: Text("오늘의 #MOOD는?", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(35, 20, 20, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xfff6f6f6),
                      ),
                      child:
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          width: 160 ,
                          height: 160,
                          'assets/images/Flatccino/Plum_Flatccino.png',
                          fit: BoxFit.fill,
                        ),
                      ),

                    ),
                    Container(margin: EdgeInsets.fromLTRB(0, 20, 30, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xfff6f6f6),
                      ),
                      child:Image.asset(
                        width: 160 ,
                        height: 160,
                        'assets/images/Flatccino/Pear_Flatccino.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(70, 10, 95, 0),
                      child: Text("자두 플랫치노", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 10,45, 0),
                        child: Text("배 플랫치노", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(88, 0, 130, 0),
                      child: Text("ICED Only", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, color: Color(0xff243c84)),),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 45, 0),
                        child: Text("ICED Only", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, color: Color(0xff243c84)),)
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(90, 0, 135, 0),
                      child: Text("3900원", style: TextStyle(fontSize: 15),),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 45, 0),
                        child: Text("3900원", style: TextStyle(fontSize: 15),)
                    )
                  ],
                )
              ],
            ),
          )
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

