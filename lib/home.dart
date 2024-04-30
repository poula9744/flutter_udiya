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
              width: 340,
              height: 160,
              child: Image.asset(
                'assets/images/main_banner.jpg',
                width: 340,
                height: 160,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
