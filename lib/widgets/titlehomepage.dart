import 'package:flutter/material.dart';

class TitleHomePage extends StatelessWidget {
  final String text;
  const TitleHomePage({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
        child: Text(text,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)));
  }
}
