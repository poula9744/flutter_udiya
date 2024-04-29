import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class YoungSoo extends StatelessWidget {
  const YoungSoo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("유영수"),
      ),
      body: Container(
        width: 1080,
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16.0),
          childAspectRatio: 8.0 / 9.0,
          children: <Widget>[
            Card(
              child: Container(
                child: Text("fdsfsd"),
              ),
            ),
            Card(
              child: Container(
                child: Text("fdsfsd"),
              ),
            ),
            Card(
              child: Container(
                child: Text("fdsfsd"),
              ),
            ),
            Card(
              child: Container(
                child: Text("fdsfsd"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
