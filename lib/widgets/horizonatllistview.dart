import 'package:Wonderbe/widgets/category.dart';
import 'package:flutter/material.dart';

class HorizonatlListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryWidget(imgCaption: "Shorts", imgUrl: 'assets/images/c1.jpeg'),
          CategoryWidget(imgCaption: "Shorts", imgUrl: "assets/images/c2.jpg"),
          CategoryWidget(imgCaption: "Shorts", imgUrl: "assets/images/c3.jpeg"),
          CategoryWidget(imgCaption: "Shorts", imgUrl: "assets/images/c4.jpg"),
        ],
      ),
    );
  }
}
