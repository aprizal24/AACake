import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../welcome/views/welcome_view.dart';

class ImagepickerController extends GetxController {
  final ImagePicker imagePicker = ImagePicker();
  final pickedImage = Rx<File?>(null);
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> pickImageGalery() async {
    try {
      var pickedfile = await imagePicker.pickImage(source: ImageSource.gallery);

      //you can use ImageCourse.camera for Camera capture
      if (pickedfile != null) {
        pickedImage.value = File(pickedfile.path);
        // imagefiles.add(pickedImage.value!);
      }
    } catch (e) {
      print('error while picking file.');
    }
  }

  Future<void> pickImageCamera() async {
    try {
      var pickedfile = await imagePicker.pickImage(source: ImageSource.camera);

      //you can use ImageCourse.camera for Camera capture
      if (pickedfile != null) {
        pickedImage.value = File(pickedfile.path);
        // imagefiles.add(pickedImage.value!);
      }
    } catch (e) {
      print('error while picking file.');
    }
  }

  void logout() async {
    await _auth.signOut();
    Get.offAll(WelcomeView());
  }
}
