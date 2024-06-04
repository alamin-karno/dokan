import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/core/utils/helpers/helpers.dart';
import 'package:dokan/core/utils/popups/popups.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

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
        'We are processing your information...',
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

      // REGISTER USER IN THE FIREBASE AUTHENTICATION
      /*final userCredential =
          await AuthenticationRepository.instance.registerWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      // SAVE AUTHENTICATE USER INFO TO FIREBASE FIRESTORE
      final user = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profileImage: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserInfo(user);*/

      // REMOVE LOADER
      AppFullScreenLoader.stopLoading();

      // SHOW SUCCESS MESSAGE
      AppLoaders.successSnackBar(
        title: 'Congratulations',
        message: 'Your account has been created! Verify email to continue.',
      );

      // REDIRECT TO VERIFY EMAIL SCREEN
      // Get.to(() => VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      // SHOWING GENERIC ERROR TO USER
      AppLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
