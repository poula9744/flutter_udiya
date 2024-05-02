import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'LebVo.dart';

class EunBin0 extends StatelessWidget {
  const EunBin0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff243c84)),
        title: Text("결제하기",
            style: TextStyle(
                fontWeight: FontWeight.w600, color: Color(0xff243c84))),
      ),
      body: Container(
        child: _EunBin0(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 12.0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Color(0xff243c84),
        unselectedItemColor: Color(0xff9e9e9e),
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.popUntil(context, (route) => route.isFirst);
              break;
            case 1:
              Navigator.pushNamed(context, '/jaehyeon3');
              break;
            case 2:
              Navigator.pushNamed(context, '/youngsoo');
              break;
            case 3:
              Navigator.pushNamed(context, '/jaehyeon2');
              break;
            case 4:
              Navigator.pushNamed(context, '/dasom');
              break;
            default:
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xff243c84),
              ),
              label: '홈'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_membership,
                color: Color(0xff243c84),
              ),
              label: '스탬프'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.coffee,
                color: Color(0xff243c84),
              ),
              label: '주문'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.credit_card,
                color: Color(0xff243c84),
              ),
              label: '결제 내역'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                color: Color(0xff243c84),
              ),
              label: '장바구니'),
        ],

        //selectedItemColor: Color.fromARGB(255, 197, 142, 233),
        //unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class _EunBin0 extends StatefulWidget {
  const _EunBin0({super.key});

  @override
  State<_EunBin0> createState() => _EunBin0State();
}

class _EunBin0State extends State<_EunBin0> {
  //공통변수
  late Future<LebVo> LebVoFuture;
  late Future<int> mileFuture;
  late Future<String> franFuture;
  late Future<int> menuTotalFuture;
  late Future<int> paymentFuture;


  final TextEditingController _mileController = TextEditingController();

  late int usemile = 0;
  late int mile = 0;

  late int menuTotal = 0;

  late int total = 0;

  late int receipt_no = 0;


  static const menuItems = <String>[
    '신한카드',
    '현대카드',
    'KB국민카드',
    'NH농협카드',
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    ),
  ).toList();

  static const phoneItems = <String>[
    'SKT',
    'KT',
    'LG U+',
    '기타',
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems2 = phoneItems
      .map(
        (String value) => DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    ),
  ).toList();

  String? _btn2SelectedVal;
  String? _btn1SelectedVal;

  bool isCard = false;
  bool isKakaoPay = false;
  bool isPhone = false;
  bool isNaverPay = false;

  //초기화할때
  @override
  void initState() {
    super.initState();

    mileFuture = getMile();
    franFuture = getFran();
  }


  @override
  Widget build(BuildContext context) {

    //라우터로 전달받은 cate_no, product_no
    late final args = ModalRoute.of(context)!.settings.arguments as Map;

    //cate_no, product_no 키를 사용하여 값을 추출
    late final product_no = args['product_no'];
    late final count = args['count'];
    late final hi_no = args['hi_no'];

    int menuTotal = 0;


    //read
    LebVoFuture = getPaymentVo(product_no, hi_no);


    return FutureBuilder(
      future: LebVoFuture, //Future<> 함수명, 으로 받은 데이타
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('데이터를 불러오는 데 실패했습니다.'));
        } else if (!snapshot.hasData) {
          return Center(child: Text('데이터가 없습니다.'));
        } else {
          menuTotal = menuTotal + (snapshot.data!.price * count).toInt();
          total = menuTotal - usemile;

          return Container(
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
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          padding: EdgeInsets.fromLTRB(20, 10, 50, 10),
                          child: Text(
                            "주문매장",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ),
                        FutureBuilder(
                            future: franFuture, //Future<> 함수명, 으로 받은 데이타
                            builder: (context, snapshot) {
                              if (snapshot.connectionState == ConnectionState.waiting) {
                                return Center(child: CircularProgressIndicator());
                              } else if (snapshot.hasError) {
                                return Center(child: Text('데이터를 불러오는 데 실패했습니다.'));
                              } else if (!snapshot.hasData) {
                                return Center(child: Text('데이터가 없습니다.'));
                              } else {


                                return Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                        child: Text("${snapshot.data}",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                        child: Text("서울 강남구 역삼동"),
                                      )
                                    ],
                                  ),
                                );
                              }}),
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
                          child: Text("주문메뉴",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700)),
                        ),
                        Container(
                          width: 450,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color(0xfff5f5f5))),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 150,
                                height: 150,
                                child: Image.asset(
                                    "assets/images/${snapshot.data!.picture}"),
                              ),
                              Container(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0, 25, 0, 0),
                                        child: Text(
                                          "${snapshot.data!.productname}(${snapshot.data!.size})",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                            "${snapshot.data!.price}",
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.w600)),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                  "${count}개/"),
                                            ),
                                            Container(
                                              child: Text(
                                                  "${snapshot.data!.hoi}/"),
                                            ),
                                            Container(
                                              child: Text("Take Out"),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  50, 0, 0, 0),
                                              alignment:
                                              Alignment.bottomRight,
                                              child: Text("${count*snapshot.data!.price}"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  FutureBuilder(
                      future: mileFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Center(child: Text('데이터를 불러오는 데 실패했습니다.'));
                        } else if (!snapshot.hasData) {
                          return Center(child: Text('데이터가 없습니다.'));
                        } else {
                          //데이터가 있으면
                          mile = int.parse("${snapshot.data}");

                          return Container(
                            width: 1080,
                            color: Color(0xffffffff),
                            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                        child: Text("마일리지 적용",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700)),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                        child: Text("보유 ${mile}원",
                                            style: TextStyle(fontSize: 15)),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 200,
                                      height: 50,
                                      margin: EdgeInsets.fromLTRB(10, 0, 7, 0),
                                      padding: EdgeInsets.fromLTRB(10, 3, 5, 3),
                                      child: TextFormField(
                                        controller: _mileController,
                                        decoration: InputDecoration(
                                          labelText: '마일리지',
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          print("마일리지 선택");
                                          setState(() {
                                            usemile = int.parse(_mileController.text);
                                          });
                                        },
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(
                                              Color(0xff243c84)),
                                        ),
                                        child: Text(
                                          "선택",
                                          style: TextStyle(color: Color(0xffffffff)),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          );
                        }}),
                  Container(
                    width: 1080,
                    color: Color(0xffffffff),
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text("결제수단",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700)),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 180,
                              margin: EdgeInsets.fromLTRB(25, 10, 5, 10),
                              child: ElevatedButton(
                                  onPressed: () {
                                    print("신용카드");
                                    setState(() {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text('카드사를 선택해주세요'),
                                            content: Column(
                                              children: <Widget>[
                                                ListTile(
                                                  title: const Text('카드사 선택:'),
                                                  trailing: DropdownButton(
                                                    value: _btn2SelectedVal,
                                                    hint: const Text('카드선택'),
                                                    onChanged: (String? newValue) {
                                                      if (newValue != null) {
                                                        setState(() => _btn2SelectedVal = newValue);
                                                      }
                                                    },
                                                    items: _dropDownMenuItems,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            actions: [
                                              TextButton(
                                                  onPressed: (){
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text("선택완료")
                                              )
                                            ],
                                          );
                                        },
                                      );
                                    }
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff243c84),
                                    padding:
                                    EdgeInsets.fromLTRB(30, 15, 30, 15),
                                    shape: BeveledRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  child: Text(
                                    "신용카드",
                                    style: TextStyle(
                                        fontSize: 20, color: Color(0xffffffff)),
                                  )),
                            ),

                            Container(
                              width: 180,
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text('카카오페이'),
                                            content: Container(
                                              child: Text("카카오페이머니: 3천원 즉시할인(6만원 이상 결제 시, 기간 내 1회)"),
                                            ),
                                            actions: [
                                              TextButton(
                                                  onPressed: (){
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text("완료")
                                              )
                                            ],
                                          );
                                        },
                                      );
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff243c84),
                                    padding:
                                    EdgeInsets.fromLTRB(20, 15, 20, 15),
                                    shape: BeveledRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  child: Text("카카오페이",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xffffffff)))),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 180,
                              margin: EdgeInsets.fromLTRB(25, 0, 5, 10),
                              child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text('통신사를 선택해주세요'),
                                            content: Column(
                                              children: <Widget>[
                                                ListTile(
                                                  title: const Text('통신사 선택:'),
                                                  trailing: DropdownButton(
                                                    value: _btn1SelectedVal,
                                                    hint: const Text('통신사'),
                                                    onChanged: (String? newValue) {
                                                      if (newValue != null) {
                                                        setState(() => _btn1SelectedVal = newValue);
                                                      }
                                                    },
                                                    items: _dropDownMenuItems2,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            actions: [
                                              TextButton(
                                                  onPressed: (){
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text("선택완료")
                                              )
                                            ],
                                          );
                                        },
                                      );
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff243c84),
                                    padding:
                                    EdgeInsets.fromLTRB(20, 15, 20, 15),
                                    shape: BeveledRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  child: Text("휴대폰결제",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xffffffff)))),
                            ),
                            Container(
                              width: 180,
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text('네이버페이'),
                                            content: Container(
                                              child: Text("네이버페이머니: 5천원 즉시할인(10만원 이상 결제 시, 기간 내 1회)"),
                                            ),
                                            actions: [
                                              TextButton(
                                                  onPressed: (){
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text("완료")
                                              )
                                            ],
                                          );
                                        },
                                      );
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff243c84),
                                    padding:
                                    EdgeInsets.fromLTRB(20, 15, 20, 15),
                                    shape: BeveledRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  child: Text("네이버페이",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xffffffff)))),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Text("결제정보",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(25, 10, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(

                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                  child: Text("메뉴금액",
                                      style:
                                      TextStyle(fontWeight: FontWeight.w600)),
                                ),
                                Container(

                                  child: Text("${menuTotal}원"),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                  child: Text("할인쿠폰",
                                      style:
                                      TextStyle(fontWeight: FontWeight.w600)),
                                ),
                                Container(
                                  child: Text("${usemile}원"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                  child: Text("총결제금액",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600)),
                                ),
                                Container(
                                  child: snapshot.data != null
                                      ? Text("${total}원",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ) : Text("데이터가 없습니다"),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
                  Container(
                    width: 1080,
                    height: 70,
                    color: Color(0xff243c84),
                    child: Container(
                      child: TextButton(
                          onPressed: () {
                            print("영수증");
                            payment(total, usemile, mile, product_no, count, hi_no);
                            //history(historyList, receipt_no);
                            print("끝");

                            showDialog(
                                context: context,
                                builder: (BuildContext context){
                                  return AlertDialog(
                                    title: Text("결제완료"),
                                    content: Text("결제가 완료되었습니다"),
                                    actions: [
                                      TextButton(onPressed: (){
                                        Navigator.pushNamed(context, "/jaehyeon");
                                      },
                                          child: Text("확인")),
                                    ],
                                  );
                                }
                            );

                          },
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Color(0xff243c84)),
                          ),
                          child: Text(
                            "결제하기",
                            style: TextStyle(
                                fontSize: 30, color: Color(0xffffffff)),
                          )),
                    ),
                  )
                ],
              ),
            ),
          );
        } // 데이터가있으면
      },
    );
  }
}

Future<LebVo> getPaymentVo(product_no, hi_no) async {
  print("왜 안될까?????????????????????");
  print(product_no);
  print(hi_no);
  try {
    /*----요청처리-------------------*/
    //Dio 객체 생성 및 설정
    var dio = Dio();

    // 헤더설정:json으로 전송
    dio.options.headers['Content-Type'] = 'application/json';

    // 서버 요청
    final response = await dio.get(
      'http://localhost:9011/api/payment/${product_no}/${hi_no}',
    );

    /*----응답처리-------------------*/
    if (response.statusCode == 200) {
      //접속성공 200 이면
      print("!?????????????????????!!!!!!");
      print(response.data);
      print(response.data["apiData"]); // json->map 자동변경
      LebVo directVo = LebVo.fromJson(response.data["apiData"]);
      print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
      //메뉴 금액

      return directVo;
    } else {
      //접속실패 404, 502등등 api서버 문제
      throw Exception('api 서버 문제');
    }
  } catch (e) {
    //예외 발생
    throw Exception('Failed to load person: $e');
  }
}


//마일리지
Future<int> getMile() async {
  print("getMileFran(): 데이터 가져오기 중");
  try {
    /*----요청처리-------------------*/
    //Dio 객체 생성 및 설정
    var dio = Dio();

    // 헤더설정:json으로 전송
    dio.options.headers['Content-Type'] = 'application/json';

    // 서버 요청
    final response = await dio.get(
      'http://localhost:9011/api/payment/mile',
    );

    /*----응답처리-------------------*/
    if (response.statusCode == 200) {
      //접속성공 200 이면
      print(response.data); // json->map 자동변경
      int mile = response.data["apiData"];

      return mile;

    } else {
      //접속실패 404, 502등등 api서버 문제
      throw Exception('api 서버 문제');
    }
  } catch (e) {
    //예외 발생
    throw Exception('Failed to load person: $e');
  }
}

//지점
Future<String> getFran() async {
  print("getFran(): 데이터 가져오기 중");
  try {
    /*----요청처리-------------------*/
    //Dio 객체 생성 및 설정
    var dio = Dio();

    // 헤더설정:json으로 전송
    dio.options.headers['Content-Type'] = 'application/json';

    // 서버 요청
    final response = await dio.get(
      'http://localhost:9011/api/payment/fran',
    );

    /*----응답처리-------------------*/
    if (response.statusCode == 200) {
      //접속성공 200 이면
      print(response.data["apiData"]); // json->map 자동변경
      String franchisee_name = response.data["apiData"];

      return franchisee_name;

    } else {
      //접속실패 404, 502등등 api서버 문제
      throw Exception('api 서버 문제');
    }
  } catch (e) {
    //예외 발생
    throw Exception('Failed to load person: $e');
  }
}


//결제하기
Future<int> payment(int total, int usemile, int mile, product_no, count, hi_no) async {
  print("payment()");

  try {
    /*----요청처리-------------------*/
    //Dio 객체 생성 및 설정
    var dio = Dio();

    // 헤더설정:json으로 전송
    dio.options.headers['Content-Type'] = 'application/json';


    // 서버 요청
    final response = await dio.post(
      'http://localhost:9011/api/payment/direct',

      data: {
        // 예시 data  map->json자동변경
        'total': total, //총 결제 금액
        'usemile': usemile, //사용한 마일리지
        'totalmile': mile, //총 마일리지
        'product_no': product_no,
        'count': count,
        'hi_no': hi_no
      },

    );

    /*----응답처리-------------------*/
    if (response.statusCode == 200) {
      //접속성공 200 이면
      print(response.data); // json->map 자동변경
      int receipt_no = response.data["apiData"];
      print("receipt_no");
      print(receipt_no);
      return receipt_no;
    } else {
      //접속실패 404, 502등등 api서버 문제
      throw Exception('api 서버 문제');
    }
  } catch (e) {
    //예외 발생
    throw Exception('Failed to load person: $e');
  }
}