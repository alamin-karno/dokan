import 'package:dokan/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class AppTextFormFieldTheme {
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColors.darkGrey,
    suffixIconColor: AppColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: AppSizes.fontSizeMd, color: AppColors.darkGrey),
    hintStyle: const TextStyle()
        .copyWith(fontSize: AppSizes.fontSizeSm, color: AppColors.darkGrey),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: AppColors.black.withOpacity(0.8)),
    border: InputBorder.none,
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: AppColors.darkGrey,
    suffixIconColor: AppColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: AppSizes.fontSizeMd, color: AppColors.white),
    hintStyle: const TextStyle()
        .copyWith(fontSize: AppSizes.fontSizeSm, color: AppColors.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: AppColors.white.withOpacity(0.8)),
    border: InputBorder.none,
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
  );
}
