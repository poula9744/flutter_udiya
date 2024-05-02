class LebVo {
  //필드


  int? franchisee_no;  //프랜차이즈
  int? franchisee_name;

  int count;

  int? product_no; //상품
  String? productname;
  int price;
  String? text;
  String? picture;
  String? size;

  int? hi_no;
  String? hoi;

  int? menuTotal;

  //생성자
  LebVo({

    required this.franchisee_no,
    required this.franchisee_name,
    required this.count,
    required this.product_no,
    required this.productname,
    required this.price,
    required this.text,
    required this.picture,
    required this.size,
    required this.hi_no,
    required this.hoi,
    required this.menuTotal
  });

  //map--> personVo형식으로 변환
  factory LebVo.fromJson(Map<String, dynamic> apiData) {
    return LebVo(
      franchisee_no: apiData['franchisee_no'],
      franchisee_name: apiData['franchisee_name'],
      count: apiData['count'],
      product_no: apiData['product_no'],
      productname: apiData['productname'],
      price: apiData['price'],
      text: apiData['text'],
      picture: apiData['picture'],
      size: apiData['size'],
      hi_no: apiData['hi_no'],
      hoi: apiData['hoi'],
      menuTotal: apiData['menuTotal']
    );
  }

  //현재의 PersonVo를 Map형식으로 내보내줌
  Map<String, dynamic> toJson() {
    return {
      'franchisee_no': franchisee_no,
      'franchisee_name': franchisee_name,
      'count': count,
      'product_no': product_no,
      'productname': productname,
      'price': price,
      'text': text,
      'picture': picture,
      'size': size,
      'hi_no': hi_no,
      'hoi': hoi,
      'menuTotal': menuTotal
    };
  }
}
