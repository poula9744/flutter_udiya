

class YdsVo {
  //필드
  int shopNo;
  int usersNo;
  int productNo;
  int hiNo;
  String hoi;
  int count;
  String picture;
  String productname;
  String size;
  int price;

  YdsVo({
    required  this.shopNo,
    required  this.usersNo,
    required  this.productNo,
    required  this.hiNo,
    required  this.hoi,
    required  this.count,
    required  this.picture,
    required  this.productname,
    required  this.size,
    required  this.price});

  //map--> personVo형식으로 변환
  factory YdsVo.fromJson(Map<String, dynamic> apiData) {
    return YdsVo(
      shopNo: apiData['shopNo'],
      usersNo: apiData['usersNo'],
      productNo: apiData['productNo'],
      hiNo: apiData['hiNo'],
      hoi: apiData['hoi'],
      count: apiData['count'],
      picture: apiData['picture'],
      productname: apiData['productname'],
      size: apiData['size'],
      price: apiData['price']
    );
  }

  //현재의 PersonVo를 Map형식으로 내보내줌
  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'picture': picture,
      'productname': productname,
      'hoi': hoi,
      'hiNo': hiNo,
      'size': size,
      'price': price,
    };
  }


}