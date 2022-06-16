import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../../infrastructure/dal/services/firebase_service.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

class HomeController extends GetxController {
  final FirebaseService _service = FirebaseService();

  RxDouble bannerScrollPosition = 0.0.obs;
  RxDouble brandScrollPosition = 0.0.obs;
  RxInt currentCategory = 0.obs;
  RxList<dynamic> bannerImg = <dynamic>[].obs;

  List<String> categoryLabel = <String>[
    'Choisis pour vous',
    'Ananas',
    'Banane douce'
  ];

  @override
  void onInit() {
    getHomeBanner();
    super.onInit();
  }

  Future<void> getHomeBanner() {
    return _service.homeBanner.get().then((QuerySnapshot querySnapshot) {
      for (final QueryDocumentSnapshot<Object?> doc in querySnapshot.docs) {
        bannerImg.add(doc['image']);
      }
    });
  }
}
