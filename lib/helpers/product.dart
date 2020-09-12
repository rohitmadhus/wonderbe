import 'package:Wonderbe/models/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductServices {
  String collection = "products";
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<List<ProductModel>> getProducts() async =>
      _firebaseFirestore.collection(collection).get().then((result) {
        List<ProductModel> products = [];
        for (DocumentSnapshot product in result.docs) {
          //converting to type object so that that we can retrive field easyly
          products.add(ProductModel.fromSnapshot(product));
        }
        return products;
      });

  Future<List<ProductModel>> getProductsWithShoFor({String shopFor}) async =>
      _firebaseFirestore
          .collection(collection)
          .where("genderCategory",
              isEqualTo: shopFor.toString().toLowerCase().trim())
          .get()
          .then((result) {
        print(shopFor);
        List<ProductModel> products = [];
        for (DocumentSnapshot product in result.docs) {
          //converting to type object so that that we can retrive field easyly
          products.add(ProductModel.fromSnapshot(product));
        }
        print(products);
        return products;
      });
  Future<List<ProductModel>> getProductsByCategory({String category}) async =>
      _firebaseFirestore
          .collection(collection)
          .where("category",
              isEqualTo: category.toString().toLowerCase().trim())
          .get()
          .then((result) {
        print(category);
        List<ProductModel> products = [];
        for (DocumentSnapshot product in result.docs) {
          //converting to type object so that that we can retrive field easyly
          products.add(ProductModel.fromSnapshot(product));
        }
        print(products);
        return products;
      });
}
