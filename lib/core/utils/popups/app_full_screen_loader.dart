import 'package:dokan/core/common/widgets/widgets.dart';
import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/core/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A utility class for managing a full-screen loading dialog
class AppFullScreenLoader {
  /// Open a full-screen loading dialog with a given text and animation.
  /// This method doesn't return anything.
  ///
  /// Parameters:
  ///   - text: The text to be displayed in the loading dialog.
  ///   - animation: The Lottie animation to be shown.
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: AppHelperFunctions.isDarkMode(Get.context!)
              ? AppColors.dark
              : AppColors.white,
          child: Column(
            children: [
              const SizedBox(height: 250),
              AppAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  /// Stop the currently open loading dialog.
  /// This method doesn't return anything.
  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
