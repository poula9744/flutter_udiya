import 'package:flutter/material.dart';

class JeaHyeon3 extends StatelessWidget {
  const JeaHyeon3({super.key});

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
      body: Container(),
    );
  }
}