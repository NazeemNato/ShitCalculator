import 'package:flutter/material.dart';
import 'cal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "Simple Calculator",
        theme: new ThemeData.dark(),
        home: MyCal(),
      ),
    );
  }
}