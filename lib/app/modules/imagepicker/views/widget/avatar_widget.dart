import 'dart:io';

import 'package:demo_modul2/app/modules/imagepicker/controllers/imagepicker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImagepickerController _controller = Get.find<ImagepickerController>();

    return Container(
      height: 200,
      width: 200,
      margin: const EdgeInsets.only(top: 140, left: 100),
      child: Obx(() {
        final File? pickedImage = _controller.pickedImage.value;
        return Card(
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(50)
          // ),
          child: Obx(() {
            return _controller.pickedImage.value != null
                ? Image.file(_controller.pickedImage.value!)
                : Image.asset('assets/profilmeg.jpg');
          }),
        );
      }),
    );
  }
}
