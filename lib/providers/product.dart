import 'package:Wonderbe/helpers/product.dart';
import 'package:Wonderbe/models/product.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  ProductServices _productServices = ProductServices();
  List<ProductModel> products = [];
  List<ProductModel> productsUnderBudget = [];
  List<ProductModel> productsInCategory = [];
  List<ProductModel> productsInArrival = [];
  List<ProductModel> productsInOffer = [];
  List<ProductModel> shopForList = [];

  ProductProvider.initialize() {
    _loadProducts();
  }

  void sortProductWithPrice({int order}) {
    if (order == 1) {
      products.sort(
          (product1, product2) => product1.price.compareTo(product2.price));
    }
    if (order == 0) {
      products.sort(
          (product2, product1) => product1.price.compareTo(product2.price));
    }
    notifyListeners();
  }

  void sortProductWithOffer({int order}) {
    if (order == 1) {
      products.sort(
          (product1, product2) => product1.offer.compareTo(product2.offer));
    }
    if (order == 0) {
      products.sort(
          (product2, product1) => product1.offer.compareTo(product2.offer));
    }
    notifyListeners();
  }

  _loadProducts() async {
    products = await _productServices.getProducts();
    products
        .sort((product2, product1) => product1.offer.compareTo(product2.offer));
    notifyListeners();
  }

  Future loadProductwithShopFor({String shopFor}) async {
    products.clear();
    products = await _productServices.getProductsWithShoFor(shopFor: shopFor);
    //  / products.replaceRange(0, shopForList.length, shopForList);
    products
        .sort((product2, product1) => product1.offer.compareTo(product2.offer));
    notifyListeners();
  }

  Future loadProductsByCategory({String category}) async {
    products.clear();
    products = await _productServices.getProductsByCategory(category: category);
    //  / products.replaceRange(0, shopForList.length, shopForList);
    products
        .sort((product2, product1) => product1.offer.compareTo(product2.offer));
    notifyListeners();
  }
}
