import 'package:Wonderbe/providers/product.dart';
import 'package:Wonderbe/widgets/productInGrid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GridWidget extends StatefulWidget {
  @override
  _GridWidgetState createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Scrollbar(
        child: GridView.builder(
            physics: ScrollPhysics(),
            itemCount: products.products.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return ProductWidget(
                product: products.products[index],
              );
            }),
      ),
    );
  }
}
