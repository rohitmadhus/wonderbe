import 'package:Wonderbe/models/category.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryServices {
  String collection = "categories";
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<List<CategoryModel>> getCategories() async =>
      _firebaseFirestore.collection(collection).get().then((result) {
        List<CategoryModel> categories = [];
        for (DocumentSnapshot category in result.docs) {
          //converting to type object so that that we can retrive field easyly
          categories.add(CategoryModel.fromSnapshot(category));
        }
        print("hkjabdkjhabsdkjbaskjdbaskjdbkajsd");
        print(categories.length);
        return categories;
      });
}
