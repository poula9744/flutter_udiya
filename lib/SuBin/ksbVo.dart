import 'package:flutter/cupertino.dart';

class KsbVo {
  //필드
  int? product_no;
  int? cate_no;
  String? productname;
  int? price;
  String? text;
  String? picture;
  String? size;
  int? hi_no;
  int? shop_no;
  int? users_no;
  int? count;
  String? cate_name;

  //생성자
  KsbVo({
    this.product_no,
    this.cate_no,
    this.productname,
    this.price,
    this.text,
    this.picture,
    this.size,
    this.hi_no,
    this.shop_no,
    this.users_no,
    this.count,
    this.cate_name,
  });

  //map--> personVo형식으로 변환
  factory KsbVo.fromJson(Map<String, dynamic> apiData) {
    print("=========================aa");
    print(apiData);
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
        count: apiData['count'],
        cate_name: apiData['cate_name']
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
      'count': count,
      'cate_name': cate_name
    };
  }
}
