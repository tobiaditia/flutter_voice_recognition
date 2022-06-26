import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/theory_detail_controller.dart';

class TheoryDetailView extends GetView<TheoryDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TheoryDetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TheoryDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
