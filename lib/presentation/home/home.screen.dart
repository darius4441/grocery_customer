import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/presentation/home/components/brand_higligt.dart';

import 'components/banner_widget.dart';
import 'components/search_widget.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        title: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            elevation: 0,
            centerTitle: true,
            title: const Text("Grocery"),
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          SearchWidget(),
          SizedBox(height: 10),
          BannerWidget(),
          BrandHiglight()
        ],
      ),
    );
  }
}
