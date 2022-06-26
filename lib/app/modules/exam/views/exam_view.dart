import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/exam_controller.dart';

class ExamView extends GetView<ExamController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExamView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ExamView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
