import 'package:dokan/core/common/widgets/shimmer/app_shimmer_effect.dart';
import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/features/personalization/personalization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileTitleWidget extends StatelessWidget {
  const ProfileTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = AccountController.instance;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Obx(
          () {
            if (controller.isLoading.value) {
              return const AppShimmerEffect(width: 160, height: 20);
            }

            return Text(
              controller.userResponseModel.value.fullName != null
                  ? controller.userResponseModel.value.fullName!
                  : controller.userResponseModel.value.name ?? '',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            );
          },
        ),
        const SizedBox(height: AppSizes.spaceBtwItems * 0.5),
        Obx(
          () {
            if (controller.isLoading.value) {
              return const AppShimmerEffect(width: 140, height: 12);
            }

            return Text(
              controller.userResponseModel.value.email ??
                  'info@alaminkarno.com',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: AppColors.textGrey),
            );
          },
        ),
      ],
    );
  }
}
