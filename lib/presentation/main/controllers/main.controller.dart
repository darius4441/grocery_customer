import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/presentation/screens.dart';

class MainController extends GetxController {
  final selectedIndex = 0.obs;

  static const TextStyle widgetsStyle = TextStyle(fontSize: 20);

  final List<Widget> widgetOptions = <Widget>[
    const HomeScreen(),
    const CartScreen(),
    const MessageScreen(),
    const AccountScreen()
  ];

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
