import 'package:bmicalculator/home.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyCode());
}

class MyCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
