// ignore_for_file: avoid_classes_with_only_static_members

class Routes {
  static Future<String> get initialRoute async {
    return SPLASH;
  }

  static const String CART = '/cart';
  static const String HOME = '/home';
  static const String MAIN = '/main';
  static const String MESSAGE = '/message';
  static const String ONBOARDING = '/onboarding';
  static const String SPLASH = '/splash';
  static const String ACCOUNT = '/account';
}
