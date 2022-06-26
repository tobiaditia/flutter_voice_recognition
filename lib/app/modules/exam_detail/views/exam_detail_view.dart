import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/exam_detail_controller.dart';

class ExamDetailView extends GetView<ExamDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExamDetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ExamDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
