import 'package:e_learning_tunanetra_speech_recognition2/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    int init = controller.init.value;
    return Scaffold(
      body: InkWell(
        onTap:()=>Get.toNamed(Routes.MAIN),
        child: Container(
            margin: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Text("PIN"),
                    const SizedBox(
                      width: 8,
                    ),
                    Obx(() => Text(controller.pin.value)),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    const Text("Password"),
                    const SizedBox(
                      width: 8,
                    ),
                    Obx(() => Text(controller.password.value)),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
