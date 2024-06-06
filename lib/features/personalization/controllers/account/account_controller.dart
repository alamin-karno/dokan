import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/core/utils/helpers/helpers.dart';
import 'package:dokan/core/utils/popups/popups.dart';
import 'package:dokan/data/repositories/repositories.dart';
import 'package:dokan/features/personalization/models/user_response_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  static AccountController get instance => Get.find();

  final Rx<bool> showEditAccount = false.obs;
  final Rx<bool> isLoading = false.obs;

  final _userRepository = Get.put(UserRepository());

  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final streetAddress = TextEditingController();
  final aptSuite = TextEditingController();
  final zipCode = TextEditingController();

  GlobalKey<FormState> accountFormKey = GlobalKey<FormState>();

  Rx<UserResponseModel> userResponseModel = UserResponseModel().obs;

  @override
  void onInit() {
    initialize();
    super.onInit();
  }

  void initialize() {
    if (userResponseModel.value.email != null) {
      email.text = userResponseModel.value.email ?? '';
    }
    if (userResponseModel.value.firstName != null) {
      firstName.text = userResponseModel.value.firstName ?? '';
    }
    if (userResponseModel.value.lastName != null) {
      lastName.text = userResponseModel.value.firstName ?? '';
    }
  }

  void onAccountPressed(bool value) {
    showEditAccount.value = !value;
  }

  Future<void> loadAccountInfo() async {
    isLoading.value = true;

    try {
      final userResponse = await _userRepository.getUserProfileInfo();
      if (userResponse != null) {
        userResponseModel.value = userResponse;
      }
    } catch (e) {
      debugPrint('-- ${e.toString()}');
    }

    isLoading.value = false;
  }

  Future<void> onSaveAccountInfo() async {
    try {
      // LOADING...
      AppFullScreenLoader.openLoadingDialog(
        'Updating your profile info....',
        AppImages.dockerAnimation,
      );

      // CHECK INTERNET
      final connected = await NetworkManager.instance.isConnected();
      if (!connected) {
        AppFullScreenLoader.stopLoading();
        return;
      }

      // FORM VALIDATION
      if (!accountFormKey.currentState!.validate()) {
        AppFullScreenLoader.stopLoading();
        return;
      }

      // SAVE USER INFO
      final userRepository = await _userRepository.updateUserProfile(
        userResponseModel.value.id.toString(),
        firstName.text.trim(),
        lastName.text.trim(),
      );

      if (userRepository != null) {
        userResponseModel.value = userRepository;
        AppLoaders.successSnackBar(
          title: 'Congratulations',
          message: 'Your firstname and lastname update successfully!',
        );
      }

      // REMOVE LOADER
      AppFullScreenLoader.stopLoading();

      // AFTER SAVED
      onAccountPressed(showEditAccount.value);
    } catch (e) {
      AppFullScreenLoader.stopLoading();
      AppLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  void signOut() {
    AppPopup.warningDialog(
      onPositivePressed: () => AuthenticationRepository.instance.signOut(),
    );
  }
}
