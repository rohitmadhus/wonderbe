import 'package:Wonderbe/helpers/pagenavigation.dart';
import 'package:Wonderbe/providers/app.dart';
import 'package:Wonderbe/providers/product.dart';
import 'package:Wonderbe/screens/home.dart';
import 'package:Wonderbe/styles/colorscheme.dart';
import 'package:Wonderbe/widgets/gridviewwidget.dart';
import 'package:Wonderbe/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductProvider>(context);
    final app = Provider.of<AppProvider>(context);
    double height = MediaQuery.of(context).size.height;
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
              child: Container(
                  height: height - 140,
                  child: products.products != null
                      ? GridWidget(products: products.products)
                      : Center(child: Loading())),
            )
          ],
        ),
        bottomNavigationBar: Container(
          height: 56,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "SORT :",
                      style: TextStyle(fontSize: 14),
                    ),
                    elevation: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: RaisedButton(
                      textColor: Colors.black,
                      color: app.sort[0] ? Colors.pink : Colors.white,
                      onPressed: () {
                        app.changeSort(sortId: 0);
                        products.sortProductWithPrice(order: 1);
                        print(products.products[0].price);
                        setState(() {});
                      },
                      child: Row(
                        children: [
                          Text(
                            "Price",
                            style: TextStyle(fontSize: 13),
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.arrow_upward,
                            size: 13,
                          )
                        ],
                      ),
                      elevation: 1,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: RaisedButton(
                      textColor: Colors.black,
                      color: app.sort[1] ? Colors.pink : Colors.white,
                      onPressed: () {
                        app.changeSort(sortId: 1);
                        products.sortProductWithPrice(order: 0);
                        print(products.products[0].price);
                        setState(() {});
                      },
                      child: Row(
                        children: [
                          Text(
                            "Price",
                            style: TextStyle(fontSize: 13),
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.arrow_downward,
                            size: 13,
                          )
                        ],
                      ),
                      elevation: 1,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: RaisedButton(
                      textColor: Colors.black,
                      color: app.sort[2] ? Colors.pink : Colors.white,
                      onPressed: () {
                        app.changeSort(sortId: 2);
                        products.sortProductWithOffer(order: 1);
                        // print(products.products[0].price);
                        setState(() {});
                      },
                      child: Row(
                        children: [
                          Text(
                            "Offer",
                            style: TextStyle(fontSize: 13),
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.arrow_upward,
                            size: 13,
                          )
                        ],
                      ),
                      elevation: 1,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: RaisedButton(
                      textColor: Colors.black,
                      color: app.sort[3] ? Colors.pink : Colors.white,
                      onPressed: () {
                        app.changeSort(sortId: 3);
                        products.sortProductWithOffer(order: 0);
                        setState(() {});
                      },
                      child: Row(
                        children: [
                          Text(
                            "Offer",
                            style: TextStyle(fontSize: 13),
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.arrow_downward,
                            size: 13,
                          )
                        ],
                      ),
                      elevation: 1,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
