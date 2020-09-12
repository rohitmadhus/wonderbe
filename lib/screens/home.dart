import 'dart:async';

import 'package:Wonderbe/helpers/pagenavigation.dart';
import 'package:Wonderbe/providers/category.dart';
import 'package:Wonderbe/helpers/conectivityCheck.dart';
import 'package:Wonderbe/providers/product.dart';
import 'package:Wonderbe/screens/contactScreen.dart';
import 'package:Wonderbe/screens/detailScreen.dart';
import 'package:Wonderbe/widgets/brandsWidget.dart';
import 'package:Wonderbe/widgets/budgetBuy.dart';
import 'package:Wonderbe/widgets/carouselInHome.dart';
import 'package:Wonderbe/widgets/category.dart';
import 'package:Wonderbe/widgets/loading.dart';
import 'package:Wonderbe/widgets/newarrivalwidget.dart';
import 'package:Wonderbe/widgets/offerWidget.dart';
import 'package:Wonderbe/widgets/shopFor.dart';
import 'package:Wonderbe/widgets/titlehomepage.dart';
import 'package:Wonderbe/widgets/trendingWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  StreamSubscription _connectionChangeStream;
  bool isOffline = false;
  @override
  initState() {
    super.initState();
    ConnectionStatusSingleton connectionStatus =
        ConnectionStatusSingleton.getInstance();
    _connectionChangeStream =
        connectionStatus.connectionChange.listen(connectionChanged);
  }

  void connectionChanged(dynamic hasConnection) {
    setState(() {
      isOffline = !hasConnection;
    });
  }

  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<CategoryProvider>(context);
    final products = Provider.of<ProductProvider>(context);

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //     toolbarHeight: 45,
        //     elevation: 1,
        //     backgroundColor: primary,
        //     title: Text(
        //       "WONDERBE",
        //       style: TextStyle(fontSize: 15),
        //     ),
        //     actions: <Widget>[
        //       IconButton(
        //           icon: Icon(Icons.shopping_cart, color: iconColor),
        //           onPressed: () {
        //             changeScreen(context, CartScreen());
        //           }),
        //       IconButton(
        //           icon: Icon(Icons.notifications, color: iconColor),
        //           onPressed: null)
        //     ]),
        // drawer: Drawer(
        //   child: ListView(
        //     children: [
        //       UserAccountsDrawerHeader(
        //         accountName: Text("WONDERBE"),
        //         accountEmail: Text("abc@gmail.com"),
        //         currentAccountPicture: CircleAvatar(
        //           backgroundColor: Colors.red,
        //           child: Icon(Icons.people),
        //         ),
        //         decoration: BoxDecoration(color: Colors.red),
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.home),
        //         title: Text("Home"),
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.home),
        //         title: Text("Home"),
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.home),
        //         title: Text("Home"),
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.home),
        //         title: Text("Home"),
        //       ),
        //     ],
        //   ),
        // ),
        body: isOffline
            ? Loading()
            : ListView(
                children: <Widget>[
                  Container(
                    height: 43,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WonderBe",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/bg1.jpeg",
                              ))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 3),
                            child: HomeScreenCarouselWidget(),
                          ),
                          ShopForWidget(),
                        ],
                      )),
                  TitleHomePage(text: "Categories"),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Container(
                        height: 100,
                        child: categories.categories != null
                            ? ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: categories.categories.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () async {
                                      await products.loadProductsByCategory(
                                          category: categories
                                              .categories[index].name
                                              .toString()
                                              .trim());
                                      changeScreen(context, DetailScreen());
                                    },
                                    child: CategoryWidget(
                                        categoryModel:
                                            categories.categories[index]),
                                  );
                                })
                            : Loading()),
                  ),

//Container(height: 330, child: GridWidget()),
                  Padding(
                      padding: const EdgeInsets.all(0),
                      child: TitleHomePage(text: "New Arrivals")),

                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: categories.categories.length >= 3
                        ? NewArrivalWidget(newArrival: categories.categories)
                        : SizedBox(height: 2),
                  ),
                  BudgetBuyWidget(),
                  TitleHomePage(text: "Brands"),
                  BrandsWidget(brands: categories.categories),
                  TitleHomePage(text: "Offers"),
                  OfferWidget(offers: categories.categories),
                  TitleHomePage(text: "Trending Now"),
                  TrendingWidget(trending: categories.categories),

                  //Flexible(child: null)
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: Colors.pink,
            alignment: Alignment.center,
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      size: 25,
                      color: Colors.white,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: () {
                      changeScreen(context, ContactScreen());
                    }),
                IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: null)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
