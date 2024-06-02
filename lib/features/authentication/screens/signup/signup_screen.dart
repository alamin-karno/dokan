import 'package:dokan/core/common/styles/styles.dart';
import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/features/authentication/authentication.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: AppSizes.spaceBtwSections),
              AddProfileImageWidget(),
              SizedBox(height: AppSizes.spaceBtwSections),
              SinUpFormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
