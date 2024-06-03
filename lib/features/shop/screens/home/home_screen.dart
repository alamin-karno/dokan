import 'package:dokan/core/common/widgets/widgets.dart';
import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/features/shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBackground,
        centerTitle: true,
        title: Text(
          'Product List',
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppImages.search,
              height: AppSizes.iconMd,
              width: AppSizes.iconMd,
              colorFilter: const ColorFilter.mode(
                AppColors.iconColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(width: AppSizes.spaceBtwItems),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.defaultSpace - 4,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: AppSizes.spaceBtwItems),
              const HomeSearchFilterWidget(),
              const SizedBox(height: AppSizes.spaceBtwSections),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.xs,
                ),
                child: AppGridLayout(
                  mainAxisExtent: 300,
                  itemCount: 10,
                  itemBuilder: (_, index) {
                    return const ProductCardWidget();
                  },
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
