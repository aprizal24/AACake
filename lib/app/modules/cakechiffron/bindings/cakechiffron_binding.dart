import 'package:get/get.dart';

import '../controllers/cakechiffron_controller.dart';

class CakechiffronBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CakechiffronController>(
      () => CakechiffronController(),
    );
  }
}
