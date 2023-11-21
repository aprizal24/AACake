import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../welcome/views/welcome_view.dart';
import '../controllers/loginpage_controller.dart';

class LoginpageView extends GetView<LoginpageController> {
  const LoginpageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(LoginpageController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
                        controller.loginUser(
                          controller.emailController.text,
                          controller.passwordController.text,
                        );
                      },
                child: controller.isLoading.value
                    ? CircularProgressIndicator()
                    : Text('Login'),
              );
            }),
            Obx(() {
              return ElevatedButton(
                onPressed: controller.isLoading.value ? null : () {
                  Get.to(WelcomeView());
                },
                child: controller.isLoading.value
                    ? CircularProgressIndicator()
                    : Text('Register Page'),
              );
            }),
          ],
        ),
      ),
    );
  }
}
