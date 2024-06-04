import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/core/utils/helpers/helpers.dart';
import 'package:dokan/core/utils/popups/popups.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  static AccountController get instance => Get.find();

  final Rx<bool> showEditAccount = false.obs;

  final email = TextEditingController();
  final name = TextEditingController();
  final streetAddress = TextEditingController();
  final aptSuite = TextEditingController();
  final zipCode = TextEditingController();

  GlobalKey<FormState> accountFormKey = GlobalKey<FormState>();

  void onAccountPressed(bool value) {
    showEditAccount.value = !value;
  }

  Future<void> onSaveAccountInfo() async {
    try {
      // LOADING...
      AppFullScreenLoader.openLoadingDialog(
        'Saving your profile info....',
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

      // REMOVE LOADER
      AppFullScreenLoader.stopLoading();

      // AFTER SAVED
      onAccountPressed(showEditAccount.value);
    } catch (e) {
      AppFullScreenLoader.stopLoading();
      AppLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
