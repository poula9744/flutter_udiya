import 'package:flutter/material.dart';
import 'package:flutter_udiya/DaSom/dasom.dart';
import 'package:flutter_udiya/EunBin/eunbin.dart';
import 'package:flutter_udiya/JaeHyeon/jaehyeon.dart';
import 'package:flutter_udiya/JaeHyeon/jaehyeon2.dart';
import 'package:flutter_udiya/SuBin/subin.dart';
import 'package:flutter_udiya/YoungSoo/youngsoo.dart';
import 'package:flutter_udiya/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "/dasom": (context) => DaSom(),
        "/eunbin": (context) => EunBin(),
        "/jaehyeon": (context) => JaeHyeon(),
        "/jaehyeon2": (context) => JeaHyeon2(),
        "/subin": (context) => SuBin(),
        "/youngsoo": (context) => Youngsoo(),

      },
    );
  }
}

