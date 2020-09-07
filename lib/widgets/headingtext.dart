import 'package:flutter/material.dart';

class HeadingTextWidget extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const HeadingTextWidget({Key key, this.size, this.text, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size),
      textAlign: TextAlign.left,
    );
  }
}
