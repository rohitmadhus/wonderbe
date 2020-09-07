import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String imgUrl;
  final String imgCaption;

  const CategoryWidget({Key key, this.imgUrl, this.imgCaption})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100,
          child: ListTile(
              title: Image.asset(
                imgUrl,
                width: 80,
                height: 80,
              ),
              subtitle: Container(
                  height: 30,
                  alignment: Alignment.topCenter,
                  child: Text(imgCaption))),
        ));
  }
}
