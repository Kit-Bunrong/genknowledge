import 'package:flutter/material.dart';
import 'package:genknowledge/screens/home_genknowledge.dart';

class InfoGenknowLedge extends StatelessWidget {
  final String dataTest;
  InfoGenknowLedge(this.dataTest);
  @override
  Widget build(BuildContext context) {
    const PrimaryColor = const Color(0xFF5C0931);
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: PrimaryColor,
      ),
      body: SafeArea(
        child: ListTile(
          title: Text(dataTest),
        ),
      ),
    );
  }
}
