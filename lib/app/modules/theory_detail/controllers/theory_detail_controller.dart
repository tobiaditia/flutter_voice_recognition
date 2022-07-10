import 'dart:convert';

import 'package:e_learning_tunanetra_speech_recognition2/app/data/models/theory.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class TheoryDetailController extends GetxController {
  Theory? theory;
  RxBool isLoading = false.obs;
  FlutterTts flutterTts = FlutterTts();

  fetch(int id) async {
    isLoading.value = true;
    final response =
        await http.get(Uri.parse('https://vrcslbpgri.website/api/theory/$id'));
    if (response.statusCode == 200) {
      theory = Theory.fromJson(jsonDecode(response.body));
      print(theory);
    } else {
      Get.defaultDialog(
          title: "Terjadi kesalahan", middleText: "Failed to load juz");
    }
    isLoading.value = false;
    update();
  }
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    theory = null;
    fetch(Get.arguments['id']);
  }


  @override
  void onClose() {
    flutterTts.stop();
  }
  void increment() => count.value++;

  Future<void> speak(String string) async {
    await flutterTts.speak(string);
  }
}
