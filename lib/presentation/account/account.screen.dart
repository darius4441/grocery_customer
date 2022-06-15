import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/account.controller.dart';

class AccountScreen extends GetView<AccountController> {
  const AccountScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AccountScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AccountScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
