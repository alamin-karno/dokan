import 'package:dokan/core/common/widgets/widgets.dart';
import 'package:dokan/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class AppVerticalProductShimmer extends StatelessWidget {
  final int itemCount;

  const AppVerticalProductShimmer({super.key, this.itemCount = 4});

  @override
  Widget build(BuildContext context) {
    return AppGridLayout(
      mainAxisExtent: 300,
      itemCount: itemCount,
      itemBuilder: (_, __) => const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Material(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppSizes.borderRadiusLg),
                topRight: Radius.circular(AppSizes.borderRadiusLg),
              ),
              clipBehavior: Clip.antiAlias,
              child: AppShimmerEffect(width: 180, height: 170, radius: 0),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Material(
              color: AppColors.white,
              elevation: 1.5,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(AppSizes.borderRadiusLg),
                bottomRight: Radius.circular(AppSizes.borderRadiusLg),
              ),
              child: Padding(
                padding: EdgeInsets.all(AppSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppShimmerEffect(width: 150, height: 12),
                    SizedBox(height: AppSizes.spaceBtwItems * 0.8),
                    AppShimmerEffect(width: 110, height: 12),
                    SizedBox(height: AppSizes.spaceBtwItems),
                    Row(
                      children: [
                        AppShimmerEffect(width: 50, height: 12),
                        SizedBox(width: AppSizes.spaceBtwItems * 0.5),
                        AppShimmerEffect(width: 60, height: 15),
                      ],
                    ),
                    SizedBox(height: AppSizes.spaceBtwItems),
                    AppShimmerEffect(width: 140, height: 15),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
