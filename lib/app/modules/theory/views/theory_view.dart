import 'package:e_learning_tunanetra_speech_recognition2/app/data/widgets/shimmer.dart';
import 'package:e_learning_tunanetra_speech_recognition2/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/theory_controller.dart';

class TheoryView extends GetView<TheoryController> {
  @override
  Widget build(BuildContext context) {
    int init = controller.count.value;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Materi'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: GetBuilder<TheoryController>(builder: (e) {
            return Column(
              children: [
                Obx(() => controller.isLoading.isTrue
                    ? builderShimmer(26)
                    : Container(
                      margin: const EdgeInsets.all(24),
                        height: Get.height - (200),
                        child: ListView(
                            children: e.theories
                                .map(
                                  (theory) => GestureDetector(
                                    onTap: () => Get.toNamed(
                                        Routes.THEORY_DETAIL,
                                        arguments: {
                                          "id": theory.id,
                                        }),
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 6),
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 199, 199, 199),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text(
                                        theory.name,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                )
                                .toList()),
                      )),
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
