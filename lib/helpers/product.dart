import 'package:Wonderbe/models/category.dart';
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
}
