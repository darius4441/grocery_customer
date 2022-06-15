import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/message.controller.dart';

class MessageScreen extends GetView<MessageController> {
  const MessageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MessageScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MessageScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
