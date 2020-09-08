import 'package:Wonderbe/styles/colorscheme.dart';
import 'package:Wonderbe/widgets/productInCart.dart';
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
        backgroundColor: primary,
        title: Text("Cart"),
      ),
      body: CartProductWidget(),
      bottomNavigationBar: Container(
        child: Row(
          children: <Widget>[
            Expanded(child: Text("Total")),
            Expanded(child: Text("234")),
            MaterialButton(
              onPressed: () {},
              color: primary,
              child: Text("Check Out"),
            )
          ],
        ),
      ),
    );
  }
}
