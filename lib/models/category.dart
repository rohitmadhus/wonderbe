import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel {
  static const ID = "id";
  static const IMAGE = "image";
  static const NAME = "name";

  String _id;
  String _image;
  String _name;

  String get id => _id;
  String get image => _image;
  String get name => _name;

  CategoryModel.fromSnapshot(DocumentSnapshot snapshot) {
    _id = snapshot.data()[ID];
    _image = snapshot.data()[IMAGE];
    _name = snapshot.data()[NAME];
  }
}
