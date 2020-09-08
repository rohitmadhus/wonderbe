import 'package:Wonderbe/widgets/productInGrid.dart';
import 'package:flutter/material.dart';

class GridWidget extends StatefulWidget {
  @override
  _GridWidgetState createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
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
    },
    {
      "name": "blazer",
      "image": "assets/images/c2.jpg",
      "oldPrice": 200.00,
      "price": 150.00
    },
    {
      "name": "shorts",
      "image": "assets/images/c1.jpeg",
      "oldPrice": 200.00,
      "price": 150.00
    },
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
    },
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
    },
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
