import 'package:flutter/material.dart';

class EunBin extends StatelessWidget {
  const EunBin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff243c84)),
        title: Text("결제하기"),
        actions: [
          IconButton(onPressed: (){
            print("홈으로");
          }, icon: Icon(Icons.home))
        ],
      ),
      body: Container(
        width: 1080,
        height: 1920,
        color: Color(0xff9e9e9e),
        child: SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               width: 1080,
               color: Color(0xffffffff),
               margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
               padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     child: Text(
                       "주문매장",
                       style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),),
                   ),
                   Container(
                     child: Text(
                         "역삼플래티넘점",
                        style: TextStyle(fontSize: 30)
                     ),
                   ),
                   Container(
                     child: Text("서울 강남구 역삼동"),
                   )
                 ],
               ),
             ),
             Container(
               width: 1080,
               color: Color(0xffffffff),
               margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
               padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     child: Text("픽업예정시간", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
                   ),
                   Container(
                     child: Text("바로방문"),
                   ),
                   Container(
                     child: Text("일회용 수저/포크 받기"),
                   )
                 ],
               ),
             ),
             Container(
               width: 1080,
               color: Color(0xffffffff),
               margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
               padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     child: Text("주문메뉴", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
                   ),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                         width: 300,
                         height: 300,
                         child: Image.asset(
                             "assets/images/Beverage/HOT_Black _Herbal _Tea.png"
                         ),
                       ),
                       Container(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Container(
                               child: Text("영수 스페셜 티"),
                             ),
                             Row(
                               children: [
                                 Container(
                                   child: Text("1개"),
                                 ),
                                 Container(
                                   child: Text("3,700원"),
                                 )
                               ],
                             ),
                           ],
                         )
                       ),
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             child: Text("ICED"),
                           ),
                           Container(
                             child: Text("Large"),
                           ),
                           Container(
                             child: Text("매장 3,700원"),
                           )
                         ],
                       )
                     ],
                   )
                 ],
               ),
             ),
             Container(
               width: 1080,
               color: Color(0xffffffff),
               margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
               padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     children: [
                       Container(
                         child: Text("쿠폰 적용", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
                       ),
                       Container(
                         child: Text("보유 1장"),
                       )
                     ],
                   ),
                   Row(
                     children: [
                       Container(
                         child: Text("0원"),
                       ),
                       TextButton(
                           onPressed: (){},
                           child: Text("선택"))
                     ],
                   )
                 ],
               ),
             ),
             Container(
               width: 1080,
               color: Color(0xffffffff),
               margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
               padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
               child: Column(
                 children: [
                   Container(
                     child: Text("결제수단", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
                   ),
                   Row(
                     children: [
                       ElevatedButton(
                           onPressed: (){},
                           style: ElevatedButton.styleFrom(
                             backgroundColor: Color(0xff243c84),
                             textStyle: TextStyle(fontSize: 30)
                           ),
                           child: Text("신용카드")
                       ),
                       ElevatedButton(onPressed: (){}, child: Text("카카오페이"))
                     ],
                   ),
                   Row(
                     children: [
                       ElevatedButton(onPressed: (){}, child: Text("휴대폰결제")),
                       ElevatedButton(onPressed: (){}, child: Text("네이버페이"))
                     ],
                   )
                 ],
               ),
             ),
             Container(
               width: 1080,
               color: Color(0xffffffff),
               margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
               padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
               child: Column(
                 children: [
                   Container(
                     child: Text("결제정보", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
                   ),
                   Row(
                     children: [
                       Container(
                         child: Text("메뉴금액"),
                       ),
                       Container(
                         child: Text("3700원"),
                       )
                     ],
                   ),
                   Row(
                     children: [
                       Container(
                         child: Text("할인쿠폰"),
                       ),
                       Container(
                         child: Text("0원"),
                       )
                     ],
                   ),
                   Row(
                     children: [
                       Container(
                         child: Text("총결제금액"),
                       ),
                       Container(
                         child: Text("3700원"),
                       )
                     ],
                   )
                 ],
               ),
             ),
             Container(
               width: 1080,
               height: 100,
               color: Color(0xffffffff),
               child: TextButton(onPressed: (){}, child: Text("결제하기", style: TextStyle(fontSize: 30, color: Color(0xffffffff)),)),
             )
           ],
         ),
        ),
      )
    );
  }
}
