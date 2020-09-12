import 'package:Wonderbe/helpers/pagenavigation.dart';
import 'package:Wonderbe/providers/product.dart';
import 'package:Wonderbe/screens/detailScreen.dart';
import 'package:Wonderbe/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopForWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List shopFor = [
      {
        "for": "All",
        "image": "assets/images/shopForAll.jpeg",
      },
      {
        "for": "Boys",
        "image": "assets/images/shopForBoy.jpeg",
      },
      {
        "for": "Girls",
        "image": "assets/images/shopForGirl.jpeg",
      },
    ];
    double width = MediaQuery.of(context).size.width;
    final products = Provider.of<ProductProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 6, left: 15, right: 15),
      child: Container(
        width: width,
        height: 110,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: shopFor
                .map(
                  (e) => GestureDetector(
                    onTap: () async {
                      await products.loadProductwithShopFor(
                          shopFor: e["for"].toString().trim());
                      changeScreen(context, DetailScreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 80,
                            height: 80,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(45),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                        child: Align(
                                      alignment: Alignment.center,
                                      child: Loading(),
                                    )),
                                    Positioned.fill(
                                        child: Image.asset(e["image"],
                                            fit: BoxFit.cover))
                                  ],
                                )),
                          ),
                          Container(
                            width: 80,
                            height: 30,
                            alignment: Alignment.center,
                            child: Text(
                              e["for"],
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList()),
      ),
    );
  }
}
