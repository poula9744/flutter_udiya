
class JhVo2{
  String nick;
  int mile;

  JhVo2({
    required this.nick,
    required this.mile,
  });

  //map--> personVo형식으로 변환
  factory JhVo2.fromJson(Map<String, dynamic> apiData) {
    return JhVo2(
      nick: apiData['nick'],
      mile: apiData['mile'],
    );
  }

  @override
  String toString() {
    return 'JhVo2{nick: $nick, mile: $mile}';
  }
}