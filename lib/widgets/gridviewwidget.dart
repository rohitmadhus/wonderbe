import 'package:Wonderbe/widgets/loading.dart';
import 'package:Wonderbe/widgets/productInGrid.dart';
import 'package:flutter/material.dart';

class GridWidget extends StatefulWidget {
  final List products;

  const GridWidget({Key key, this.products}) : super(key: key);
  @override
  _GridWidgetState createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Scrollbar(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: widget.products == null
              ? Center(
                  child: Loading(),
                )
              : GridView.builder(
                  physics: ScrollPhysics(),
                  itemCount: widget.products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return ProductWidget(
                      product: widget.products[index],
                    );
                  }),
        ),
      ),
    );
  }
}
