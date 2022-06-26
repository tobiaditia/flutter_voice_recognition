import 'package:get/get.dart';

import '../controllers/theory_detail_controller.dart';

class TheoryDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TheoryDetailController>(
      () => TheoryDetailController(),
    );
  }
}
