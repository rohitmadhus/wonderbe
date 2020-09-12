import 'package:Wonderbe/helpers/pagenavigation.dart';
import 'package:Wonderbe/screens/home.dart';
import 'package:Wonderbe/styles/colorscheme.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 70,
          toolbarOpacity: .5,
          elevation: 0,
          backgroundColor: Colors.grey,
          title: GestureDetector(
              onTap: () => changeScreen(context, new HomeScreen()),
              child: Text("WONDERBE")),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.shopping_cart, color: iconColor),
                onPressed: null),
            IconButton(
                icon: Icon(Icons.notifications, color: iconColor),
                onPressed: null)
          ]),
      body: Text("jjbjb"),
    );
  }
}
