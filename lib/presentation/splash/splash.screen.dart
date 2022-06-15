import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'controllers/splash.controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'GROCERY APP',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
