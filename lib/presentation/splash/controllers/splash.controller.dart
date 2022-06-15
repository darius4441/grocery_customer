import 'dart:async';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grocery/infrastructure/navigation/routes.dart';

class SplashController extends GetxController {
  final DateTime date = DateTime.now();
  final _onboarding = GetStorage().read("onBoarding");

  @override
  void onInit() {
    Timer(const Duration(seconds: 3), () {
      _onboarding ?? false
          ? Get.offAllNamed(Routes.MAIN)
          : Get.offNamed(Routes.ONBOARDING);
    });

    super.onInit();
  }
}
