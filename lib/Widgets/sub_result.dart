import 'package:flutter/material.dart';

class SubResult extends StatelessWidget {
  SubResult({this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: Text(this.text, style: TextStyle(fontSize: 30)),
    );
  }
}
