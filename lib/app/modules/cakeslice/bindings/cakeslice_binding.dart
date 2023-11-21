import 'package:get/get.dart';

import '../controllers/cakeslice_controller.dart';

class CakesliceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CakesliceController>(
      () => CakesliceController(),
    );
  }
}
