import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/core/utils/helpers/helpers.dart';
import 'package:dokan/core/utils/popups/popups.dart';
import 'package:dokan/data/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final _authRepository = AuthenticationRepository.instance;

  final hidePassword = true.obs;

  final email = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  /// Email and Password Signing
  Future<void> signInWithUserNameAndPassword() async {
    try {
      // LOADING...
      AppFullScreenLoader.openLoadingDialog(
        'Logging you in....',
        AppImages.dockerAnimation,
      );

      // CHECK INTERNET
      final connected = await NetworkManager.instance.isConnected();
      if (!connected) {
        AppFullScreenLoader.stopLoading();
        return;
      }

      // FORM VALIDATION
      if (!loginFormKey.currentState!.validate()) {
        AppFullScreenLoader.stopLoading();
        return;
      }

      // LOGIN USER USING EMAIL AND PASSWORD
      /* await _authRepository.signInWithUserNameAndPassword(
        email.text.trim(),
        password.text.trim(),
      );*/

      // REMOVE LOADER
      AppFullScreenLoader.stopLoading();

      // REDIRECT
      _authRepository.screenRedirection();
    } catch (e) {
      AppFullScreenLoader.stopLoading();
      AppLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  /// Google Signing
  void signInWithGoogle() {}

  /// Facebook Signing
  void signInWithFacebook() {}
}
