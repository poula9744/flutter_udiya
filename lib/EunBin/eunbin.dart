import 'package:flutter/cupertino.dart';
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
        color: Color(0xffecebeb),
        child: SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               width: 1080,
               color: Color(0xffffffff),
               margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     padding: EdgeInsets.fromLTRB(30, 10, 50, 10),
                     child: Text(
                       "주문매장",
                       style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                         margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                         child: Text(
                             "역삼플래티넘점",
                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)
                         ),
                       ),
                       Container(
                         padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                         child: Text("서울 강남구 역삼동"),
                       )
                     ],
                   )
                 ],
               ),
             ),
             Container(
               width: 1080,
               color: Color(0xffffffff),
               margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
               padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                     child: Text("픽업예정시간", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
                   ),
                   Container(
                     margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                     child: Row(
                       children: [
                         Container(
                           margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                           child: Icon(Icons.check, size: 20),
                         ),
                         Container(
                           child: Text("바로방문", style: TextStyle(fontSize: 20)),
                         ),
                         Container(
                           margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                           child: Icon(Icons.circle_outlined, size: 20),
                         ),
                         Container(
                           child: Text("5분 후", style: TextStyle(fontSize: 20)),
                         ),
                         Container(
                           margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                           child: Icon(Icons.circle_outlined, size: 20),
                         ),
                         Container(
                           child: Text("10분 후", style: TextStyle(fontSize: 20)),
                         ),
                         Container(
                           margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                           child: Icon(Icons.circle_outlined, size: 20),
                         ),
                         Container(
                           child: Text("15분 후", style: TextStyle(fontSize: 20)),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
             ),
             Container(
               width: 1080,
               color: Color(0xffffffff),
               padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                     child: Text("주문메뉴", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
                   ),
                   Container(
                     width: 450,
                     height: 100,
                     decoration: BoxDecoration(
                         border: Border(bottom: BorderSide(color: Color(0xfff5f5f5))),
                         borderRadius: BorderRadius.circular(10)
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Container(
                           width: 150,
                           height: 150,
                           child: Image.asset(
                               "assets/images/Beverage/HOT_Black _Herbal _Tea.png"
                           ),
                         ),
                         Container(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Container(
                                 margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                                 child: Text("영수 스페셜 티", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                               ),
                               Container(
                                 child: Text("3,700원", style: TextStyle(fontWeight: FontWeight.w600)),
                               ),
                               Container(
                                 child: Row(
                                   children: [
                                     Container(
                                       child: Text("ICED/"),
                                     ),
                                     Container(
                                       child: Text("Large/"),
                                     ),
                                     Container(
                                       child: Text("포장"),
                                     ),
                                     Container(
                                       margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                                       alignment: Alignment.bottomRight,
                                       child: Text("합계 3,700원", style: TextStyle(fontWeight: FontWeight.w600),),
                                     )
                                   ],
                                 ),
                               ),

                             ],
                           )
                         ),
                       ],
                     ),
                   )
                 ],
               ),
             ),
             Container(
               width: 1080,
               color: Color(0xffffffff),
               margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
               padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     children: [
                       Container(
                         margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                         child: Text("쿠폰 적용", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                         child: Text("보유 1장", style: TextStyle(fontSize: 15)),
                       )
                     ],
                   ),
                   Row(
                     children: [
                       Container(
                         width: 200,
                         height: 30,
                         decoration: BoxDecoration(
                             border: Border.all(color: Color(0xff9e9e9e)),
                             borderRadius: BorderRadius.circular(10)
                         ),
                         margin: EdgeInsets.fromLTRB(20, 0, 7, 0),
                         padding: EdgeInsets.fromLTRB(10, 3, 5, 0),
                         child: Text("0원"),
                       ),
                       TextButton(
                           onPressed: (){},
                           style: ButtonStyle(
                             backgroundColor: MaterialStateProperty.all(Color(0xff243c84)),
                           ),
                           child: Text("선택", style: TextStyle(color: Color(0xffffffff)),))
                     ],
                   )
                 ],
               ),
             ),
             Container(
               width: 1080,
               color: Color(0xffffffff),
               margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
               padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     child: Text("결제수단", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
                   ),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                         margin: EdgeInsets.fromLTRB(40, 10, 10, 10),
                         child: ElevatedButton(
                             onPressed: (){},
                             style: ElevatedButton.styleFrom(
                               backgroundColor: Color(0xff243c84),
                               padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                               shape: BeveledRectangleBorder(
                                 borderRadius: BorderRadius.circular(2),
                               ),
                             ),
                             child: Text("신용카드", style: TextStyle(fontSize: 20, color: Color(0xffffffff)),)
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(40, 10, 10, 10),
                         child: ElevatedButton(
                             onPressed: (){},
                             style: ElevatedButton.styleFrom(
                               backgroundColor: Color(0xff243c84),
                               padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                               shape: BeveledRectangleBorder(
                                 borderRadius: BorderRadius.circular(2),
                               ),
                             ),
                             child: Text("카카오페이", style: TextStyle(fontSize: 20, color: Color(0xffffffff)))
                         ),
                       )
                     ],
                   ),
                   Row(
                     children: [
                       ElevatedButton(
                           onPressed: (){},
                           style: ElevatedButton.styleFrom(
                             backgroundColor: Color(0xff243c84),
                             padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                             shape: BeveledRectangleBorder(
                               borderRadius: BorderRadius.circular(2),
                             ),
                           ),
                           child: Text("휴대폰결제", style: TextStyle(fontSize: 20, color: Color(0xffffffff)))
                       ),
                       ElevatedButton(
                           onPressed: (){},
                           style: ElevatedButton.styleFrom(
                             backgroundColor: Color(0xff243c84),
                             padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                             shape: BeveledRectangleBorder(
                               borderRadius: BorderRadius.circular(2),
                             ),
                           ),
                           child: Text("네이버페이", style: TextStyle(fontSize: 20, color: Color(0xffffffff)))
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
               padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
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
