import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../loginpage/views/loginpage_view.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  final WelcomeController controller = Get.put(WelcomeController());

  WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: controller.emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: controller.passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 16),
            Obx(() {
              return ElevatedButton(
                onPressed: controller.isLoading.value
                    ? null
                    : () {
                        controller.registerUser(
                          controller.emailController.text,
                          controller.passwordController.text,
                        );
                      },
                child: controller.isLoading.value
                    ? CircularProgressIndicator()
                    : Text('Register'),
              );
            }),
            Obx(() {
              return ElevatedButton(
                onPressed: controller.isLoading.value ? null : () {
                  Get.to(LoginpageView());
                },
                child: controller.isLoading.value
                    ? CircularProgressIndicator()
                    : Text('Login Page'),
              );
            }),
          ],
        ),
      ),
    );
  }
}
