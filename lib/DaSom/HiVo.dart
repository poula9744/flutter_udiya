class HiVo {
  int shopNo;
  int hiNo;


  HiVo({
    required  this.shopNo,
    required  this.hiNo,
  });

  Map<String, dynamic> toJson() {
    return {
      'shopNo': shopNo,
      'hiNo': hiNo,

    };
  }

}