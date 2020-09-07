import 'package:Wonderbe/widgets/product.dart';
import 'package:flutter/material.dart';

class HomeScreenGridWidget extends StatefulWidget {
  @override
  _HomeScreenGridWidgetState createState() => _HomeScreenGridWidgetState();
}

class _HomeScreenGridWidgetState extends State<HomeScreenGridWidget> {
  var prodeuctList = [
    {
      "name": "blazer",
      "image": "assets/images/c4.jpg",
      "oldPrice": 200.00,
      "price": 150.00
    },
    {
      "name": "shorts",
      "image": "assets/images/c4.jpg",
      "oldPrice": 200.00,
      "price": 150.00
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: ScrollPhysics(),
        itemCount: prodeuctList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return ProductWidget(
            productImage: prodeuctList[index]["image"],
            productName: prodeuctList[index]["name"],
            productOldPrice: prodeuctList[index]["oldPrice"],
            productPrice: prodeuctList[index]["price"],
          );
        });
  }
}
