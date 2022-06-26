import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';

class HomeController extends GetxController {
  RxBool isListening = false.obs;
  RxString speechText = ''.obs;
  SpeechToText speechToText = SpeechToText();
  FlutterTts flutterTts = FlutterTts();

  void listen() async {
    if (!isListening.value) {
      bool avilable = await speechToText.initialize(
        onStatus: (val) {},
        onError: (val) {},
      );
      if (avilable) {
        isListening.value = true;
        speechToText.listen(
            onResult: (val) {
              speechText.value = val.recognizedWords;
              print(speechText.value);
            },
            listenFor: const Duration(seconds: 30));
      } else {
        print('not available');
      }
    } else {
      isListening.value = false;
      speechToText.stop();
      speechText.value = '';

      print('po');
    }
      print('po');
    update();
  }

  @override
  void onReady() {
    super.onReady();
    listen();
  }

  @override
  void onClose() {}
}
