import 'package:e_learning_tunanetra_speech_recognition2/app/data/widgets/shimmer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/theory_detail_controller.dart';

class TheoryDetailView extends GetView<TheoryDetailController> {
  @override
  Widget build(BuildContext context) {
    int init = controller.count.value;
    return Scaffold(
        appBar: AppBar(
          title: Obx(() => controller.isLoading.isTrue
              ? builderShimmer(26)
              : Text(
                  controller.theory!.name,
                  textAlign: TextAlign.center,
                )),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: GetBuilder<TheoryDetailController>(builder: (e) {
            return Column(
              children: [
                Obx(() {
                  if (controller.isLoading.isTrue) {
                    return builderShimmer(26);
                  } else {
                    controller.speak(e.theory!.content);
                    return Container(
                      margin: const EdgeInsets.all(24),
                      height: Get.height - (200),
                      child: Text(
                        e.theory!.content,
                        textAlign: TextAlign.center,
                      ),
                    );
                  }
                }),
                const SizedBox(
                  height: 24,
                ),
                // Text(e.surah!.ayat[0].ar)
              ],
            );
          }),
        ));
  }
}
