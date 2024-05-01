class LebVo {
  //필드
  int users_no; //유저넘버

  String date; //마일리지
  int mile;
  String accumulate;
  int totalmile;

  int receipt_no; //영수증
  int total;
  int usemile;
  String selltime;

  int franchisee_no;  //프랜차이즈
  int franchisee_name;

  int history_no; //history
  int count;

  int product_no; //상품
  String productname;
  int price;
  String text;
  String picture;
  String size;

  int cate_no; //카테고리
  String cate_name;

  int shop_no; //장바구니
  int shop_count;

  int hi_no;
  String hoi;

  //생성자
  LebVo({
    required this.users_no,
    required this.date,
    required this.mile,
    required this.accumulate,
    required this.totalmile,
    required this.receipt_no,
    required this.total,
    required this.usemile,
    required this.selltime,
    required this.franchisee_no,
    required this.franchisee_name,
    required this.history_no,
    required this.count,
    required this.product_no,
    required this.productname,
    required this.price,
    required this.text,
    required this.picture,
    required this.size,
    required this.cate_no,
    required this.cate_name,
    required this.shop_no,
    required this.shop_count,
    required this.hi_no,
    required this.hoi,
  });

  //map--> personVo형식으로 변환
  factory LebVo.fromJson(Map<String, dynamic> apiData) {
    return LebVo(
      users_no: apiData['users_no'],
      date: apiData['date'],
      mile: apiData['mile'],
      accumulate: apiData['accumulate'],
      totalmile: apiData['totalmile'],
      receipt_no: apiData['receipt_no'],
      total: apiData['total'],
      usemile: apiData['usemile'],
      selltime: apiData['selltime'],
      franchisee_no: apiData['franchisee_no'],
      franchisee_name: apiData['franchisee_name'],
      history_no: apiData['history_no'],
      count: apiData['count'],
      product_no: apiData['product_no'],
      productname: apiData['productname'],
      price: apiData['price'],
      text: apiData['text'],
      picture: apiData['picture'],
      size: apiData['size'],
      cate_no: apiData['cate_no'],
      cate_name: apiData['cate_name'],
      shop_no: apiData['shop_no'],
      shop_count: apiData['shop_count'],
      hi_no: apiData['hi_no'],
      hoi: apiData['hoi'],
    );
  }

  //현재의 PersonVo를 Map형식으로 내보내줌
  Map<String, dynamic> toJson() {
    return {
      'users_no': users_no,
      'date': date,
      'mile': mile,
      'accumulate': accumulate,
      'totalmile': totalmile,
      'receipt_no': receipt_no,
      'total': total,
      'usemile': usemile,
      'selltime': selltime,
      'franchisee_no': franchisee_no,
      'franchisee_name': franchisee_name,
      'history_no': history_no,
      'count': count,
      'product_no': product_no,
      'productname': productname,
      'price': price,
      'text': text,
      'picture': picture,
      'size': size,
      'cate_no': cate_no,
      'cate_name': cate_name,
      'shop_no': shop_no,
      'shop_count': shop_count,
      'hi_no': hi_no,
      'hoi': hoi,
    };
  }
}
