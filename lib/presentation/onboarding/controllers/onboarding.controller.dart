import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingController extends GetxController {
  final GetStorage _onboardingStore = GetStorage();

  void setIsRead() {
    _onboardingStore.write('onBoarding', true);
  }
}
