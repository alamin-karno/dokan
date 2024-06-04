import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/features/personalization/personalization.dart';
import 'package:dokan/features/shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileMenuCardWidget extends StatelessWidget {
  const ProfileMenuCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = AccountController.instance;
    return Material(
      elevation: 2,
      color: AppColors.white,
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
      clipBehavior: Clip.antiAlias,
      child: Container(
        color: AppColors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.defaultSpace,
          vertical: AppSizes.md,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => MenuItemWidget(
                title: 'Account',
                icon: AppImages.account,
                arrowIcon: controller.showEditAccount.value
                    ? Icons.keyboard_arrow_down_outlined
                    : Icons.keyboard_arrow_right_rounded,
                onPressed: () {
                  controller.onAccountPressed(controller.showEditAccount.value);
                },
              ),
            ),
            Obx(
              () => AnimatedCrossFade(
                firstChild: Container(height: 0),
                secondChild: const UpdateProfileFormWidget(),
                crossFadeState: controller.showEditAccount.value
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: const Duration(milliseconds: 400),
              ),
            ),
            const Divider(),
            MenuItemWidget(
              title: 'Passwords',
              icon: AppImages.password,
              onPressed: () {},
            ),
            const Divider(),
            MenuItemWidget(
              title: 'Notification',
              icon: AppImages.notification,
              onPressed: () {},
            ),
            const Divider(),
            MenuItemWidget(
              title: 'Wishlist',
              icon: AppImages.wishlist,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
