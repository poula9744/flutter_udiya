import 'package:flutter/material.dart';

import 'DaSom/dasom.dart';
import 'EunBin/eunbin.dart';
import 'JaeHyeon/jaehyeon.dart';
import 'JaeHyeon/jaehyeon2.dart';
import 'JaeHyeon/jaehyeon3.dart';
import 'SuBin/subin.dart';
import 'YoungSoo/youngsoo.dart';
import 'YoungSoo/youngsoo2.dart';
import 'home.dart';


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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "/dasom": (context) => DaSom(),
        "/eunbin": (context) => EunBin(),
        "/jaehyeon": (context) => JaeHyeon(),
        "/jaehyeon2": (context) => JeaHyeon2(),
        "/jaehyeon3": (context) => JeaHyeon3(),
        "/subin": (context) => SuBin(),
        "/youngsoo": (context) => YoungSoo(),
        "/youngsoo2": (context) => YoungSoo2(),

      },
    );
  }
}

