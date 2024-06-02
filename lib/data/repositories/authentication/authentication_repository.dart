import 'package:dokan/features/authentication/authentication.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirection();
    super.onReady();
  }

  void screenRedirection() {
    Get.offAll(() => const LoginScreen());
  }
}
