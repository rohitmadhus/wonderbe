import 'package:Wonderbe/helpers/product.dart';
import 'package:Wonderbe/models/product.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  ProductServices _productServices = ProductServices();
  List<ProductModel> products = [];

  ProductProvider.initialize() {
    _loadProducts();
  }

  _loadProducts() async {
    products = await _productServices.getProducts();
    notifyListeners();
  }
}
