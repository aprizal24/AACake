import 'package:demo_modul2/app/modules/imagepicker/controllers/imagepicker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePictWithGalery extends StatelessWidget {
  ChangePictWithGalery({super.key});

  final ImagepickerController _controller = Get.put(ImagepickerController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 350, left: 30),
      child: Card(
        color: Colors.orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: TextButton(
          onPressed: () {
            _controller.pickImageGalery();
          },
          child: const Text(
            'Ganti Foto dari Galeri',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
