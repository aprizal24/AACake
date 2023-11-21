import 'package:get/get.dart';

import '../modules/cakechiffron/bindings/cakechiffron_binding.dart';
import '../modules/cakechiffron/views/cakechiffron_view.dart';
import '../modules/cakeslice/bindings/cakeslice_binding.dart';
import '../modules/cakeslice/views/cakeslice_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/imagepicker/bindings/imagepicker_binding.dart';
import '../modules/imagepicker/views/imagepicker_view.dart';
import '../modules/loginpage/bindings/loginpage_binding.dart';
import '../modules/loginpage/views/loginpage_view.dart';
import '../modules/webview/bindings/webview_binding.dart';
import '../modules/webview/views/webview_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGINPAGE,
      page: () => const LoginpageView(),
      binding: LoginpageBinding(),
    ),
    GetPage(
      name: _Paths.CAKECHIFFRON,
      page: () => const CakechiffronView(),
      binding: CakechiffronBinding(),
    ),
    GetPage(
      name: _Paths.CAKESLICE,
      page: () => CakesliceView(),
      binding: CakesliceBinding(),
    ),
    GetPage(
      name: _Paths.IMAGEPICKER,
      page: () => ImagepickerView(),
      binding: ImagepickerBinding(),
    ),
    GetPage(
      name: _Paths.WEBVIEW,
      page: () => const WebviewView(),
      binding: WebviewBinding(),
    ),
  ];
}
