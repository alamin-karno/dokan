import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/features/shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSearchFilterWidget extends StatelessWidget {
  const HomeSearchFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.xs),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(10),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            await showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
              ),
              clipBehavior: Clip.antiAlias,
              builder: (_) => const FilterBottomSheet(),
            );
          },
          child: Container(
            height: 60,
            padding: const EdgeInsets.only(
              left: AppSizes.defaultSpace,
              right: AppSizes.defaultSpace * 0.5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      AppImages.filter,
                      height: AppSizes.iconMd,
                      width: AppSizes.iconMd,
                    ),
                    const SizedBox(width: AppSizes.spaceBtwItems),
                    Text(
                      'Filter',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: AppColors.textSecondary),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Sort by',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: AppColors.textSecondary),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.iconSecondaryColor,
                    ),
                    const SizedBox(width: AppSizes.spaceBtwItems * 0.5),
                    SvgPicture.asset(
                      AppImages.menu,
                      height: AppSizes.iconSm,
                      width: AppSizes.iconSm,
                      colorFilter: const ColorFilter.mode(
                        AppColors.iconColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
