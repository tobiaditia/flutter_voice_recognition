import 'package:get/get.dart';

import '../controllers/theory_controller.dart';

class TheoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TheoryController>(
      () => TheoryController(),
    );
  }
}
