import 'package:Wonderbe/helpers/category.dart';
import 'package:Wonderbe/models/category.dart';
import 'package:flutter/material.dart';

class CategoryProvider extends ChangeNotifier {
  CategoryServices _categoryServices = CategoryServices();
  List<CategoryModel> categories = [];

  CategoryProvider.initialize() {
    _loadCategory();
  }

  _loadCategory() async {
    categories = await _categoryServices.getCategories();
    notifyListeners();
  }
}
