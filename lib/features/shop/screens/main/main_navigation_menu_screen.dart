import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:dokan/core/common/widgets/widgets.dart';
import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/features/shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MainNavigationMenuScreen extends StatelessWidget {
  const MainNavigationMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationMenuController());
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Obx(() => controller.screens[controller.selectedIndex]),
      bottomNavigationBar: Obx(
        () => CurvedNavigationBar(
          key: controller.bottomNavKey,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.transparent,
          color: AppColors.white,
          index: 2,
          letIndexChange: (value) {
            controller.onChangeIndex(value);
            return false;
          },
          items: [
            CurvedNavigationBarItem(
              child: SvgPicture.asset(
                AppImages.home,
                colorFilter: controller.selectedIndex == 0
                    ? const ColorFilter.mode(AppColors.accent, BlendMode.srcIn)
                    : null,
              ),
            ),
            CurvedNavigationBarItem(
              child: SvgPicture.asset(
                AppImages.category,
                colorFilter: controller.selectedIndex == 1
                    ? const ColorFilter.mode(AppColors.accent, BlendMode.srcIn)
                    : null,
              ),
            ),
            const CurvedNavigationBarItem(
              child: Text(''),
            ),
            CurvedNavigationBarItem(
              child: SvgPicture.asset(
                AppImages.cart,
                colorFilter: controller.selectedIndex == 3
                    ? const ColorFilter.mode(AppColors.accent, BlendMode.srcIn)
                    : null,
              ),
            ),
            CurvedNavigationBarItem(
              child: SvgPicture.asset(
                AppImages.account,
                colorFilter: controller.selectedIndex == 4
                    ? const ColorFilter.mode(AppColors.accent, BlendMode.srcIn)
                    : null,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CircularButtonWidget(
        onTap: () {
          controller.onChangeIndex(2);
        },
        child: SvgPicture.asset(
          AppImages.search,
          height: AppSizes.iconMd,
          width: AppSizes.iconMd,
        ),
      ),
    );
  }
}
