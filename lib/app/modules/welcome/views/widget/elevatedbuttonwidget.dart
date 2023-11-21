import 'package:demo_modul2/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ElevatedBottonWidget extends StatelessWidget {
  const ElevatedBottonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navigasi ke halaman utama
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(builder: (context) => const Home()),
        // );
        Get.to(HomeView());
      },
      child: const Text('Masuk'),
    );
  }
}
