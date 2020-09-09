import 'package:Wonderbe/widgets/headingtext.dart';
import 'package:Wonderbe/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class BrandsWidget extends StatelessWidget {
  final List brands;

  const BrandsWidget({Key key, this.brands}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 6, left: 15, right: 15),
      child: Container(
        width: width,
        height: 100,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: brands
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(left: 0, right: 8),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 90,
                          height: 90,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(45),
                              child: Stack(
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
                              )
                              //Image.network(categoryModel.image,fit: BoxFit.cover,)
                              ),
                        ),
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.4),
                                  Colors.black.withOpacity(0.1),
                                  Colors.black.withOpacity(0.05),
                                  Colors.black.withOpacity(0.025),
                                ],
                              )),
                        ),
                        Positioned.fill(
                            child: Align(
                                alignment: Alignment.center,
                                child: HeadingTextWidget(
                                  text: e.name,
                                  color: Colors.white,
                                  size: 26,
                                )))
                      ],
                    ),
                  ),
                )
                .toList()),
      ),
    );
  }
}
