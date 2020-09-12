import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  bool isLoading = false;
  bool isCategoryLoading = false;
  bool isCoroselLoading = false;
  bool isNewArrivalLoading = false;
  bool isBrandsLoading = false;
  bool isOfferLoading = false;

  void changeWidgetLoading(
      {category = false,
      corosel = false,
      newarrival = false,
      brands = false,
      offer = false}) {
    if (category) {
      isCategoryLoading = !isCategoryLoading;
    }
    if (corosel) {
      isCoroselLoading = !isCoroselLoading;
    }
    if (newarrival) {
      isNewArrivalLoading = !isNewArrivalLoading;
    }
    if (brands) {
      isBrandsLoading = !isBrandsLoading;
    }
    if (offer) {
      isOfferLoading = !isOfferLoading;
    }
  }

  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
