import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  static const ID = "id";
  static const NAME = "name";
  static const PRICE = "price";
  static const OFFER = "offer";
  static const CATEGORY = "category";
  static const AGE = "age";
  static const DATETIME = "datetime";
  static const FOR = "genderCategory";
  static const IMAGE = "image";

  String _id;
  String _name;
  int _price;
  int _offer;
  String _category;
  int _age;
  String _image;
  DateTime _datetime;
  String _genderCategory;

  String get id => _id;
  String get name => _name;
  int get price => _price;
  int get offer => _offer;
  String get category => _category;
  String get image => _image;
  int get age => _age;
  String get genderCategory => _genderCategory;
  DateTime get datetime => _datetime;

  ProductModel.fromSnapshot(DocumentSnapshot snapshot) {
    _id = snapshot.data()[ID];
    _name = snapshot.data()[NAME];
    _price = snapshot.data()[PRICE];
    _offer = snapshot.data()[OFFER];
    _category = snapshot.data()[CATEGORY];
    _age = snapshot.data()[AGE];
    _genderCategory = snapshot.data()[FOR];
    // _datetime = snapshot.data()[DATETIME].toDateTime();
    _image = snapshot.data()[IMAGE];
  }
}
