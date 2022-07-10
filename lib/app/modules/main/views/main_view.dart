import 'package:e_learning_tunanetra_speech_recognition2/app/constants/color.dart';
import 'package:e_learning_tunanetra_speech_recognition2/app/constants/font.dart';
import 'package:e_learning_tunanetra_speech_recognition2/app/constants/space.dart';
import 'package:e_learning_tunanetra_speech_recognition2/app/constants/style.dart';
import 'package:e_learning_tunanetra_speech_recognition2/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(defaultMargin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "-",
              style: poppinsBoldFontTextStyle,
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.THEORY),
                  child: Container(
                    width: (Get.width - (defaultMargin * 4)) * 0.5,
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    padding: const EdgeInsets.all(36),
                    decoration: BoxDecoration(
                        boxShadow: const [defaultBoxShadow],
                        color: secondaryColor,
                        borderRadius: defaultBorderRadius),
                    child: Column(
                      children: [
                        const Icon(Icons.menu_book),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Teori",
                          style: cardTextStyle,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: ()=>Get.toNamed(Routes.EXAM),
                  child: Container(
                    width: (Get.width - (defaultMargin * 4)) * 0.5,
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    padding: const EdgeInsets.all(36),
                    decoration: BoxDecoration(
                        boxShadow: const [defaultBoxShadow],
                        color: secondaryColor,
                        borderRadius: defaultBorderRadius),
                    child: Column(
                      children: [
                        const Icon(Icons.timer),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Ujian",
                          style: cardTextStyle,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
