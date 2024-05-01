class JhVo {
  int receiptNo;
  String selltime;
  String franchiseeName;
  int total;
  String productName;
  String picture;
  int count;

  JhVo({
    required this.receiptNo,
    required this.selltime,
    required this.franchiseeName,
    required this.total,
    required this.productName,
    required this.picture,
    required this.count,
  });

  //map--> personVo형식으로 변환
  factory JhVo.fromJson(Map<String, dynamic> apiData) {
    return JhVo(
      receiptNo: apiData['receiptNo'],
      selltime: apiData['selltime'],
      franchiseeName: apiData['franchiseeName'],
      total: apiData['total'],
      productName: apiData['productName'],
      picture: apiData['picture'],
      count: apiData['count'],
    );
  }

  @override
  String toString() {
    return 'JhVo{receiptNo: $receiptNo, selltime: $selltime, franchiseeName: $franchiseeName, total: $total, productName: $productName, picture: $picture, count: $count}';
  }
}
