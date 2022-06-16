import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/banner_widget.dart';
import 'components/brand_higligt.dart';
import 'components/category_widget.dart';
import 'components/search_widget.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});
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
            title: const Text('Grocery'),
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: const <Widget>[
          SearchWidget(),
          SizedBox(height: 10),
          BannerWidget(),
          BrandHiglight(),
          CategoryWidget()
        ],
      ),
    );
  }
}
