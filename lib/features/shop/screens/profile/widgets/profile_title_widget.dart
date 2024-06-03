import 'package:dokan/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class ProfileTitleWidget extends StatelessWidget {
  const ProfileTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Md. Al-Amin',
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems * 0.5),
        Text(
          'info@alaminkarno.com',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: AppColors.textGrey),
        ),
      ],
    );
  }
}
