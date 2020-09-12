import 'package:Wonderbe/helpers/pagenavigation.dart';
import 'package:Wonderbe/models/product.dart';
import 'package:Wonderbe/screens/home.dart';
import 'package:Wonderbe/styles/colorscheme.dart';
import 'package:Wonderbe/widgets/gridviewwidget.dart';
import 'package:Wonderbe/widgets/headingtext.dart';
import 'package:Wonderbe/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ProductDetailScreen extends StatefulWidget {
  final ProductModel product;

  const ProductDetailScreen({Key key, this.product}) : super(key: key);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
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
              Container(
                height: 300,
                color: Colors.black,
                child: GridTile(
                  child: Container(
                      color: Colors.white,
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                              child: Align(
                            alignment: Alignment.center,
                            child: Loading(),
                          )),
                          Positioned.fill(
                              child: FadeInImage.memoryNetwork(
                                  placeholder: kTransparentImage,
                                  image: widget.product.image,
                                  fit: BoxFit.cover))
                        ],
                      )),
                  footer: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Text(widget.product.name),
                      title: Row(
                        children: <Widget>[
                          Expanded(child: Text("${widget.product.price}")),
                          Expanded(child: Text("( ${widget.product.offer}% )"))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Size"),
                              content: Text("Choose a size"),
                              actions: [
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Colse"),
                                )
                              ],
                            );
                          });
                    },
                    child: Row(
                      children: [Text("Size"), Icon(Icons.arrow_drop_down)],
                    ),
                  )),
                  Expanded(
                      child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: [Text("Color"), Icon(Icons.arrow_drop_down)],
                    ),
                  )),
                  Expanded(
                      child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: [Text("Qty"), Icon(Icons.arrow_drop_down)],
                    ),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                        onPressed: () {},
                        color: Colors.red,
                        textColor: Colors.white,
                        elevation: 0.2,
                        child: Text("Buy Now")),
                  ),
                  IconButton(
                      icon: Icon(Icons.add_shopping_cart), onPressed: null),
                  IconButton(icon: Icon(Icons.favorite_border), onPressed: null)
                ],
              ),
              ListTile(
                title: Text("Product Details"),
                subtitle: Text("jkabckjabsckjdsbck"),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Product Name"),
                  )
                ],
              ),
              Row(
                children: <Widget>[Text("Brand Name")],
              ),
              Row(
                children: <Widget>[Text("")],
              ),
              Padding(
                  padding: const EdgeInsets.all(8),
                  child: HeadingTextWidget(
                      text: "Similar Products", color: Colors.black, size: 20)),
              Container(height: 320, child: GridWidget())
            ],
          )),
    );
  }
}
