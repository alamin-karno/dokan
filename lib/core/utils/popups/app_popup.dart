import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppPopup {
  static warningDialog({
    String title = 'Warning',
    String content = 'Are you sure to sign out from this app?',
    Function()? onNegativePressed,
    Function()? onPositivePressed,
  }) {
    Get.dialog(
      AlertDialog.adaptive(
        title: Text(title),
        content: Text(content),
        actions: [
          OutlinedButton(
            onPressed: () => onNegativePressed ?? Get.back(),
            child: const Text('No'),
          ),
          OutlinedButton(
            onPressed: onPositivePressed,
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }
}
