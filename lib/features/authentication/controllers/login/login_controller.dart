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

  final username = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  void forgetPassword() {
    AppLoaders.warningSnackBar(
      title: 'Oops!',
      message: AppStrings.forgetPasswordWaring,
    );
  }

  /// Username and Password Signing
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

      // LOGIN USER USING USERNAME AND PASSWORD
      final loginResponse = await _authRepository.signInWithUserNameAndPassword(
        username.text.trim(),
        password.text.trim(),
      );

      if (loginResponse != null) {
        AppFullScreenLoader.stopLoading();

        AppLoaders.successSnackBar(
          title: 'Congratulations',
          message: 'You have logged in successfully.',
        );

        _authRepository.screenRedirection();
      } else {
        AppFullScreenLoader.stopLoading();
      }
    } catch (e) {
      AppFullScreenLoader.stopLoading();
      AppLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  /// Google Signing
  void signInWithGoogle() {
    AppLoaders.warningSnackBar(
      title: 'Oops!',
      message: AppStrings.googleWarning,
    );
  }

  /// Facebook Signing
  void signInWithFacebook() {
    AppLoaders.warningSnackBar(
      title: 'Oops!',
      message: AppStrings.facebookWarning,
    );
  }
}
