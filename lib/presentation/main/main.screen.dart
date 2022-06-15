import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/main.controller.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Center(
          child: controller.widgetOptions[controller.selectedIndex.value],
        );
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Accueil",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: "Catégore",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Message",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Mon compte",
            ),
          ],
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: Colors.amber.shade800,
          type: BottomNavigationBarType.fixed,
          onTap: controller.onItemTapped,
        );
      }),
    );
  }
}
