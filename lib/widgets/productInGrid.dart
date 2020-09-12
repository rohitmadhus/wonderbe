import 'package:Wonderbe/helpers/pagenavigation.dart';
import 'package:Wonderbe/models/product.dart';
import 'package:Wonderbe/screens/productDetail.dart';
import 'package:Wonderbe/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ProductWidget extends StatelessWidget {
  final ProductModel product;

  const ProductWidget({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int offerPrice;
    if (product.offer != 0) {
      offerPrice =
          product.price - (product.price * (product.offer / 100)).floor();
    } else {
      offerPrice = product.price;
    }
    return Card(
      elevation: 0.3,
      margin: const EdgeInsets.all(2),
      child: Hero(
          tag: new Text("hero"),
          child: Material(
            child: InkWell(
                onTap: () {
                  changeScreen(context, ProductDetailScreen(product: product));
                },
                child: GridTile(
                    footer: Container(
                      alignment: Alignment.center,
                      height: 55,
                      color: Colors.white70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4, right: 4),
                              child: Text(product.name,
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 2, right: 2),
                                child: Text("₹$offerPrice ",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 2),
                                child: product.offer == 0
                                    ? Text("")
                                    : Text("₹${product.price} ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 1),
                                child: product.offer == 0
                                    ? Text("")
                                    : Text("(${product.offer}% off)",
                                        style: TextStyle(
                                            color: Colors.green[800],
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // child: ListTile(
                      //   leading: Text(product.name),
                      //   title: Text(
                      //     "₹${product.price}",
                      //     style: TextStyle(
                      //         fontSize: 13,
                      //         color: Colors.red,
                      //         fontWeight: FontWeight.w500),
                      //   ),
                      //   subtitle: Text(
                      //     "( ${product.offer}% )",
                      //     style: TextStyle(
                      //       fontSize: 13,
                      //       color: Colors.black54,
                      //       fontWeight: FontWeight.w500,
                      //       //decoration: TextDecoration.lineThrough,
                      //     ),
                      //   ),
                      // ),
                    ),
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
                                image: product.image,
                                fit: BoxFit.cover))
                      ],
                    ))),
          )),
    );
  }
}
