import 'dart:convert';

import 'package:e_learning_tunanetra_speech_recognition2/app/data/models/exam.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ExamController extends GetxController {
  List<Exam> theories = [];
  RxBool isLoading = false.obs;
  fetch() async {
    isLoading.value = true;
    final response =
        await http.get(Uri.parse('https://vrcslbpgri.website/api/exam'));
    if (response.statusCode == 200) {
      theories = Exam.fromJsonList(jsonDecode(response.body));
      print(theories);
    } else {
      Get.defaultDialog(
          title: "Terjadi kesalahan", middleText: "Failed to load Ujian");
    }
    isLoading.value = false;
    update();
  }
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    fetch();
  }


  @override
  void onClose() {}
  void increment() => count.value++;
}
