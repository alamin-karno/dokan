import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/core/utils/helpers/helpers.dart';
import 'package:dokan/core/utils/popups/popups.dart';
import 'package:dokan/data/repositories/repositories.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final _authRepository = AuthenticationRepository.instance;

  final hidePassword = true.obs;
  final hideConfirmPassword = true.obs;

  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      // LOADING
      AppFullScreenLoader.openLoadingDialog(
        'We are creating your account...',
        AppImages.dockerAnimation,
      );

      // CHECK INTERNET CONNECTION
      final connected = await NetworkManager.instance.isConnected();
      if (!connected) {
        AppFullScreenLoader.stopLoading();
        return;
      }

      // FORM VALIDATION
      if (!signupFormKey.currentState!.validate()) {
        AppFullScreenLoader.stopLoading();
        return;
      }

      // REGISTER USER
      final userResponse = await _authRepository.registerUser(
        username.text.trim(),
        email.text.trim(),
        password.text.trim(),
      );

      if (userResponse != null && userResponse.code == 200) {
        AppLoaders.successSnackBar(
          title: 'Congratulations',
          message: '${userResponse.message}!',
        );

        final loginResponse =
            await _authRepository.signInWithUserNameAndPassword(
          username.text.trim(),
          password.text.trim(),
        );

        // REMOVE LOADER
        AppFullScreenLoader.stopLoading();

        if (loginResponse != null) {
          _authRepository.screenRedirection();
        }
      } else if (userResponse != null &&
          (userResponse.code == 400 || userResponse.code == 406)) {
        // REMOVE LOADER
        AppFullScreenLoader.stopLoading();

        AppLoaders.warningSnackBar(
          title: 'Oh Snap!',
          message: '${userResponse.message}!',
        );
      }
    } catch (e) {
      // REMOVE LOADER
      AppFullScreenLoader.stopLoading();
      // SHOWING GENERIC ERROR TO USER
      AppLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
