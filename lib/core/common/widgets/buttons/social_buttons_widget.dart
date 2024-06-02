import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/features/authentication/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SocialButtonsWidget extends StatelessWidget {
  const SocialButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          elevation: 2,
          color: AppColors.white,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
          child: SizedBox(
            height: 56,
            width: 56,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.white,
                foregroundColor: AppColors.white,
                side: BorderSide.none,
              ),
              onPressed: () => controller.signInWithFacebook(),
              child: SvgPicture.asset(
                AppImages.facebook,
                height: AppSizes.iconMd,
                width: AppSizes.iconMd,
              ),
            ),
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Material(
          elevation: 2,
          color: AppColors.white,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
          child: SizedBox(
            height: 56,
            width: 56,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.white,
                foregroundColor: AppColors.white,
                side: BorderSide.none,
              ),
              onPressed: () => controller.signInWithFacebook(),
              child: SvgPicture.asset(
                AppImages.google,
                height: AppSizes.iconMd,
                width: AppSizes.iconMd,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
