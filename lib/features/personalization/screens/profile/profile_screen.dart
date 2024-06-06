import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/features/personalization/personalization.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = AccountController.instance;
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBackground,
        centerTitle: true,
        title: Text(
          'My Account',
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: AppSizes.spaceBtwSections),
              const ProfileImageWidget(),
              const SizedBox(height: AppSizes.spaceBtwSections),
              const ProfileTitleWidget(),
              const SizedBox(height: AppSizes.spaceBtwSections),
              const ProfileMenuCardWidget(),
              const SizedBox(height: AppSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => controller.signOut(),
                  child: const Text('Sign out'),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
