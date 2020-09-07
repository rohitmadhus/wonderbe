import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeScreenCarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.maxFinite,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("assets/images/toys1.jpg"),
          AssetImage("assets/images/toys2.jpg"),
          AssetImage("assets/images/toys4.jpg")
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 3.0,
        dotColor: Colors.white,
        indicatorBgPadding: 12,
        dotIncreasedColor: Colors.red,
        dotSpacing: 20,
        showIndicator: true,
      ),
    );
  }
}
