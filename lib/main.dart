import 'package:flutter/material.dart';

import 'DaSom/dasom.dart';
import 'EunBin/eunbin.dart';
import 'JaeHyeon/jaehyeon.dart';
import 'JaeHyeon/jaehyeon2.dart';
import 'SuBin/subin.dart';
import 'YoungSoo/youngsoo.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/youngsoo",
      routes: {
        "/": (context) => Home(),
        "/dasom": (context) => DaSom(),
        "/eunbin": (context) => EunBin(),
        "/jaehyeon": (context) => JaeHyeon(),
        "/jaehyeon2": (context) => JeaHyeon2(),
        "/subin": (context) => SuBin(),
        "/youngsoo": (context) => YoungSoo(),

      },
    );
  }
}

