import 'package:Wonderbe/helpers/pagenavigation.dart';
import 'package:Wonderbe/screens/home.dart';
import 'package:Wonderbe/styles/colorscheme.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 50,
            toolbarOpacity: 1,
            elevation: 0,
            backgroundColor: Colors.pink,
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            title: GestureDetector(
                onTap: () => changeScreen(context, new HomeScreen()),
                child: Text(
                  "WonderBe",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                )),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.shopping_cart, color: iconColor),
                  onPressed: null),
              IconButton(
                  icon: Icon(Icons.notifications, color: iconColor),
                  onPressed: null)
            ]),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 25),
          child: Container(
            height: 100,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Icon(Icons.call)],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Icon(Icons.mail_outline)],
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
