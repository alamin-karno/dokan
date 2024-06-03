import 'package:dokan/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(AppSizes.borderRadiusLg),
            topRight: Radius.circular(AppSizes.borderRadiusLg),
          ),
          clipBehavior: Clip.antiAlias,
          child: Container(
            height: 170,
            color: Colors.amberAccent.withOpacity(0.3),
          ),
        ),
        Material(
          color: AppColors.white,
          elevation: 1.5,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(AppSizes.borderRadiusLg),
            bottomRight: Radius.circular(AppSizes.borderRadiusLg),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Girls Stylish Dresses ' * 5,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems * 0.5,
                ),
                Row(
                  children: [
                    Text(
                      '\$150',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppColors.textSecondary,
                            decoration: TextDecoration.lineThrough,
                          ),
                    ),
                    const SizedBox(
                      width: AppSizes.spaceBtwItems * 0.5,
                    ),
                    Text(
                      '\$79.00',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems * 0.5,
                ),
                RatingBar(
                  initialRating: 3.5,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemSize: AppSizes.iconSm + AppSizes.xs,
                  ratingWidget: RatingWidget(
                    full: SvgPicture.asset(AppImages.rating),
                    half: SvgPicture.asset(AppImages.rating),
                    empty: SvgPicture.asset(
                      AppImages.rating,
                      colorFilter: const ColorFilter.mode(
                        AppColors.ratingIcon,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  itemPadding: const EdgeInsets.only(
                    right: AppSizes.xs * 0.5,
                  ),
                  onRatingUpdate: (double value) {},
                  ignoreGestures: true,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}