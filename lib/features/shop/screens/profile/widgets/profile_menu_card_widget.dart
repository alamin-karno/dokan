import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/features/shop/shop.dart';
import 'package:flutter/material.dart';

class ProfileMenuCardWidget extends StatelessWidget {
  const ProfileMenuCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
          children: [
            MenuItemWidget(
              title: 'Account',
              icon: AppImages.account,
              onPressed: () {},
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
