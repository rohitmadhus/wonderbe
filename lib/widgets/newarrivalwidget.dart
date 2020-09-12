import 'package:Wonderbe/widgets/headingtext.dart';
import 'package:Wonderbe/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class NewArrivalWidget extends StatelessWidget {
  final List newArrival;

  const NewArrivalWidget({Key key, this.newArrival}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return newArrival != null
        ? Padding(
            padding:
                const EdgeInsets.only(top: 6, bottom: 6, left: 6, right: 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 2),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: width / 2.2,
                            height: 160,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Loading(),
                                      ),
                                    ),
                                    Positioned.fill(
                                        child: FadeInImage.memoryNetwork(
                                            placeholder: kTransparentImage,
                                            image: newArrival[0].image,
                                            fit: BoxFit.cover))
                                  ],
                                )),
                          ),
                          Container(
                            width: width / 2.2,
                            height: 160,
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
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 5.0, bottom: 4),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: HeadingTextWidget(
                                  text: newArrival[0].name,
                                  color: Colors.white,
                                  size: 24,
                                )),
                          ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2, right: 5),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: width / 2.2,
                            height: 160,
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
                                            image: newArrival[1].image,
                                            fit: BoxFit.cover))
                                  ],
                                )
                                //Image.network(categoryModel.image,fit: BoxFit.cover,)
                                ),
                          ),
                          Container(
                            width: width / 2.2,
                            height: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.white.withOpacity(0.7),
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
                            padding: const EdgeInsets.only(top: 3),
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: HeadingTextWidget(
                                  text: newArrival[1].name,
                                  color: Colors.black,
                                  size: 24,
                                )),
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 5),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: width,
                        height: 160,
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
                                        image: newArrival[2].image,
                                        fit: BoxFit.cover))
                              ],
                            )
                            //Image.network(categoryModel.image,fit: BoxFit.cover,)
                            ),
                      ),
                      Container(
                        width: width,
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
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
                          child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: HeadingTextWidget(
                              text: newArrival[2].name,
                              color: Colors.white,
                              size: 24,
                            )),
                      ))
                    ],
                  ),
                ),
              ],
            ),
          )
        : SizedBox(height: 2);
  }
}
