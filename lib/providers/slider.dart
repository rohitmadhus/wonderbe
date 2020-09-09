import 'package:Wonderbe/helpers/slider.dart';
import 'package:Wonderbe/models/slider.dart';
import 'package:flutter/material.dart';

class SliderProvider with ChangeNotifier {
  SliderServices _sliderServices = SliderServices();
  List<SliderModel> sliders = [];
  SliderProvider.initialize() {
    _loadSlider();
  }

  _loadSlider() async {
    sliders = await _sliderServices.getSliders();
    notifyListeners();
  }
}
