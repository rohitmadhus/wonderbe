import 'package:Wonderbe/providers/slider.dart';
import 'package:Wonderbe/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class HomeScreenCarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sliders = Provider.of<SliderProvider>(context);
    return Container(
      height: 200,
      width: double.maxFinite,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: sliders.sliders.length > 0
            ? sliders.sliders
                .map((e) => Stack(
                      children: <Widget>[
                        Positioned.fill(
                            child: Align(
                          alignment: Alignment.center,
                          child: Loading(),
                        )),
                        Positioned.fill(
                            child: FadeInImage.memoryNetwork(
                                placeholder: kTransparentImage,
                                image: e.image,
                                fit: BoxFit.cover))
                      ],
                    ))
                .toList()
            : [Loading()],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 5.0,
        dotColor: Colors.white,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 12,
        dotIncreasedColor: Colors.pink,
        dotSpacing: 15,
        showIndicator: true,
      ),
    );
  }
}
