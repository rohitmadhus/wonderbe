import 'package:Wonderbe/helpers/pagenavigation.dart';
import 'package:Wonderbe/screens/productDetail.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String productName;
  final String productImage;
  final double productOldPrice;
  final double productPrice;

  const ProductWidget(
      {Key key,
      this.productName,
      this.productImage,
      this.productOldPrice,
      this.productPrice})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero"),
          child: Material(
            child: InkWell(
                onTap: () {
                  changeScreen(
                      context,
                      ProductDetailScreen(
                          image: productImage,
                          productName: productName,
                          productPrice: productPrice,
                          productOldPrice: productOldPrice));
                },
                child: GridTile(
                    footer: Container(
                      color: Colors.white70,
                      child: ListTile(
                        leading: Text(productName),
                        title: Text(
                          "₹$productPrice",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.red,
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          "₹$productOldPrice",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                    ),
                    child: Image.asset(productImage))),
          )),
    );
  }
}
