import 'package:dokan/core/common/styles/styles.dart';
import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/features/authentication/authentication.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginHeaderWidget(),
              SizedBox(height: AppSizes.spaceBtwSections),
              LoginFormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
