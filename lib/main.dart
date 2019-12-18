import 'package:flutter/material.dart';
import 'package:genknowledge/screens/home_genknowledge.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          return new HomeGenKnowledge();
        },
      ),
    );
  }
}
