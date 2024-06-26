import 'package:dokan/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppSizes.spaceBtwSections * 2),
        Center(
          child: SvgPicture.asset(AppImages.appLogo, height: 50, width: 165),
        ),
        const SizedBox(height: AppSizes.spaceBtwSections * 2),
        Text(
          'Sign In',
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
