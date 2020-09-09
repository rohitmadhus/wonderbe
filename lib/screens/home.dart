import 'package:Wonderbe/providers/category.dart';
import 'package:Wonderbe/widgets/brandsWidget.dart';
import 'package:Wonderbe/widgets/budgetBuy.dart';
import 'package:Wonderbe/widgets/carouselInHome.dart';
import 'package:Wonderbe/widgets/category.dart';
import 'package:Wonderbe/widgets/headingtext.dart';
import 'package:Wonderbe/widgets/gridviewwidget.dart';
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
  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<CategoryProvider>(context);
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
        body: ListView(
          children: <Widget>[
            HomeScreenCarouselWidget(),
            // TitleHomePage(text: "Categories"),
            ShopForWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.categories.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () async {},
                          child: CategoryWidget(
                              categoryModel: categories.categories[index]),
                        );
                      })),
            ),

            Padding(
                padding: const EdgeInsets.all(8),
                child: HeadingTextWidget(
                    text: "New Arrivals", color: Colors.black, size: 20)),
            //Container(height: 330, child: GridWidget()),

            NewArrivalWidget(newArrival: categories.categories),
            BudgetBuyWidget(budgetBuy: categories.categories),
            TitleHomePage(
              text: "OFFERS",
            ),
            BrandsWidget(brands: categories.categories),
            OfferWidget(offers: categories.categories),
            TrendingWidget(trending: categories.categories),

            //Flexible(child: null)
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
