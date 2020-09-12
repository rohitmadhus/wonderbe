import 'package:Wonderbe/widgets/headingtext.dart';
import 'package:Wonderbe/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class OfferWidget extends StatelessWidget {
  final List offers;

  const OfferWidget({Key key, this.offers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return offers != null
        ? Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Container(
              width: width,
              height: 80,
              child: Scrollbar(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: offers
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: width - 100,
                                height: 80,
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
                                width: width - 100,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    gradient: LinearGradient(
                                      begin: Alignment.centerRight,
                                      end: Alignment.centerLeft,
                                      colors: [
                                        Colors.white.withOpacity(0.6),
                                        Colors.white.withOpacity(0.6),
                                        Colors.white.withOpacity(0.6),
                                        Colors.white.withOpacity(0.4),
                                        Colors.white.withOpacity(0.1),
                                        Colors.white.withOpacity(0.05),
                                        Colors.white.withOpacity(0.025),
                                      ],
                                    )),
                              ),
                              Positioned.fill(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: HeadingTextWidget(
                                      text: e.name,
                                      color: Colors.white,
                                      size: 26,
                                    )),
                              )),
                              Positioned.fill(
                                  child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 6.0),
                                        child: Column(children: [
                                          Icon(
                                            Icons.bookmark,
                                            color: Colors.blue,
                                            size: 20,
                                          ),
                                          Text("OFFER",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ]),
                                      )))
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          )
        : SizedBox(
            height: 1,
          );
  }
}
