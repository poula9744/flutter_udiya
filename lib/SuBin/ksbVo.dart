import 'package:flutter/cupertino.dart';

class KsbVo {
  //필드
  int product_no;
  int cate_no;
  String productname;
  int price;
  String text;
  String picture;
  String size;
  int hi_no;
  int shop_no;
  int users_no;
  int count;

  //생성자
  KsbVo({
    required this.product_no,
    required this.cate_no,
    required this.productname,
    required this.price,
    required this.text,
    required this.picture,
    required this.size,
    required this.hi_no,
    required this.shop_no,
    required this.users_no,
    required this.count,
  });

  //map--> personVo형식으로 변환
  factory KsbVo.fromJson(Map<String, dynamic> apiData) {
    return KsbVo(
        product_no: apiData['product_no'],
        cate_no: apiData['cate_no'],
        productname: apiData['productname'],
        price: apiData['price'],
        text: apiData['text'],
        picture: apiData['picture'],
        size: apiData['size'],
        hi_no: apiData['hi_no'],
        shop_no: apiData['shop_no'],
        users_no: apiData['users_no'],
        count: apiData['count']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product_no': product_no,
      'cate_no': cate_no,
      'productname': productname,
      'price': price,
      'text': text,
      'picture': picture,
      'size': size,
      'hi_no': hi_no,
      'shop_no': shop_no,
      'users_no': users_no,
      'count': count
    };
  }
}
