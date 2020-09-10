import 'package:Wonderbe/helpers/pagenavigation.dart';
import 'package:Wonderbe/screens/home.dart';
import 'package:Wonderbe/styles/colorscheme.dart';
import 'package:Wonderbe/widgets/gridviewwidget.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 40,
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
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Container(height: height - 90, child: GridWidget()),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 40,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: MaterialButton(
                color: Colors.red,
                onPressed: () {},
                child: Text("age 1-5"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
