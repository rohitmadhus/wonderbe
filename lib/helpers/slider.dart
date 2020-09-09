import 'package:Wonderbe/models/slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SliderServices {
  String collection = "sliders";
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<SliderModel>> getSliders() async =>
      _firestore.collection(collection).get().then((result) {
        List<SliderModel> sliders = [];
        for (DocumentSnapshot slider in result.docs) {
          //converting to type object so that that we can retrive field easyly
          sliders.add(SliderModel.fromSnapshot(slider));
        }
        return sliders;
      });
}
