import 'package:Wonderbe/widgets/headingtext.dart';
import 'package:Wonderbe/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class TrendingWidget extends StatelessWidget {
  final List trending;

  const TrendingWidget({Key key, this.trending}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: trending
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: width,
                    height: 200,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
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
                    width: width,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
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
          .toList(),
    );
  }
}
