import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/theory_controller.dart';

class TheoryView extends GetView<TheoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TheoryView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TheoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
