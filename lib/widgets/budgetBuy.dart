import 'package:flutter/material.dart';

class BudgetBuyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List budgetBuy = [
      {"range": "₹ 500", "color": Colors.orange[800]},
      {"range": "₹ 700", "color": Colors.yellow[700]},
      {"range": "₹ 1000", "color": Colors.green[400]},
    ];
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 6, left: 15, right: 15),
      child: Container(
        width: width,
        height: 130,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: budgetBuy
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(left: 0, right: 8),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 90,
                          height: 160,
                          decoration: BoxDecoration(
                              color: e["color"],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(5),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "UNDER",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Text(
                                "____",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  e["range"],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 90,
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(5),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.3),
                                  Colors.black.withOpacity(0.2),
                                  Colors.black.withOpacity(0.1),
                                  Colors.black.withOpacity(0.05),
                                  Colors.black.withOpacity(0.03),
                                  Colors.black.withOpacity(0.02),
                                  Colors.black.withOpacity(0.01),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                )
                .toList()),
      ),
    );
  }
}
