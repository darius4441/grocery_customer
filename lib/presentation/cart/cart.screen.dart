import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/cart.controller.dart';

class CartScreen extends GetView<CartController> {
  const CartScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CartScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CartScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
