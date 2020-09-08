import 'package:Wonderbe/helpers/pagenavigation.dart';
import 'package:Wonderbe/screens/cart.dart';
import 'package:Wonderbe/styles/colorscheme.dart';
import 'package:Wonderbe/widgets/carouselInHome.dart';
import 'package:Wonderbe/widgets/headingtext.dart';
import 'package:Wonderbe/widgets/gridviewwidget.dart';
import 'package:Wonderbe/widgets/horizonatllistview.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          backgroundColor: primary,
          title: Text("WONDERBE"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.shopping_cart, color: iconColor),
                onPressed: () {
                  changeScreen(context, CartScreen());
                }),
            IconButton(
                icon: Icon(Icons.notifications, color: iconColor),
                onPressed: null)
          ]),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("WONDERBE"),
              accountEmail: Text("abc@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.people),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          HomeScreenCarouselWidget(),
          Padding(
              padding: const EdgeInsets.all(8),
              child: HeadingTextWidget(
                  text: "Categories", color: Colors.black, size: 20)),
          HorizonatlListViewWidget(),
          Padding(
              padding: const EdgeInsets.all(8),
              child: HeadingTextWidget(
                  text: "New Arrivals", color: Colors.black, size: 20)),
          Container(height: 200, child: GridWidget()),
          //Flexible(child: null)
        ],
      ),
    );
  }
}
