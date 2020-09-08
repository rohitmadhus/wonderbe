import 'package:flutter/material.dart';

class CartProductWidget extends StatefulWidget {
  @override
  _CartProductWidgetState createState() => _CartProductWidgetState();
}

class _CartProductWidgetState extends State<CartProductWidget> {
  var prodeuctList = [
    {
      "name": "blazer",
      "image": "assets/images/c4.jpg",
      "price": 150.00,
      "Size": "M",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "shorts",
      "image": "assets/images/c4.jpg",
      "Size": "M",
      "color": "Red",
      "quantity": 1,
      "price": 150.00
    },
    {
      "name": "blazer",
      "image": "assets/images/c2.jpg",
      "Size": "M",
      "color": "Red",
      "quantity": 1,
      "price": 150.00
    },
    {
      "name": "shorts",
      "image": "assets/images/c1.jpeg",
      "Size": "M",
      "color": "Red",
      "quantity": 1,
      "price": 150.00
    },
    {
      "name": "blazer",
      "image": "assets/images/c4.jpg",
      "Size": "M",
      "color": "Red",
      "quantity": 1,
      "price": 150.00
    },
    {
      "name": "shorts",
      "image": "assets/images/c4.jpg",
      "Size": "M",
      "color": "Red",
      "quantity": 1,
      "price": 150.00
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: Image.asset(
              prodeuctList[index]["image"],
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: new Text(prodeuctList[index]["name"]),
            subtitle: Row(children: [
              Text("Size :"),
              Text(prodeuctList[index]["Size"]),
              Text("color : "),
              Text(prodeuctList[index]["Size"])
            ]),
            trailing: Container(
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_drop_up, size: 20),
                      Text("${prodeuctList[index]["quantity"]}"),
                      Icon(Icons.arrow_drop_down, size: 20),
                    ],
                  ),
                  IconButton(icon: Icon(Icons.delete), onPressed: null),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
