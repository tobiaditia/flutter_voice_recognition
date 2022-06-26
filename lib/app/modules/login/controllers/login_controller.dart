import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class LoginController extends GetxController {
  FlutterTts flutterTts = FlutterTts();
  SpeechToText speechToText = SpeechToText();
  final RxBool _speechEnabled = false.obs;
  final RxBool isListening = false.obs;
  final RxBool isSpeak = false.obs;
  final RxString _lastWords = ''.obs;
  final RxString pin = ''.obs;
  final RxString password = ''.obs;
  RxInt init = 0.obs;

  @override
  void onInit() {
    super.onInit();
    flutterTts.setLanguage('id');
    flutterTts.setSpeechRate(0.4);
    // _initSpeech();
  }

  @override
  void onReady() {
    super.onReady();
    speak('Silahkan masukkan kode pin anda');
    hearPin();
  }

  void speak(String string) {
    isSpeak.value = true;
    flutterTts.speak(string);
    isSpeak.value = false;
  }

  void _initSpeech() async {
    _speechEnabled.value = await speechToText.initialize();
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    _lastWords.value = result.recognizedWords;
  }

  void hearPin() async {
    await speechToText.initialize();
    speechToText.listen(
      onResult: (result) => pin.value = result.recognizedWords,
      listenFor: const Duration(seconds: 30),
      localeId: 'id_ID',
    );
  }

  void hearPassword() async {
    await speechToText.listen(
        onResult: (result) => password.value = result.recognizedWords);
  }

  void clearLastWord() {
    _lastWords.value = '';
  }
}
