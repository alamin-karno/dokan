import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/features/shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key, required this.product});

  final ProductModel product;

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
            width: double.infinity,
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)]
                .withOpacity(0.1),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: product.images?[0]?.src ?? '',
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Icon(
                Icons.image,
                color: AppColors.darkGrey,
                size: AppSizes.iconLg * 2,
              ),
            ),
          ),
        ),
        Expanded(
          child: Material(
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
                    product.name ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      if (product.salePrice != null &&
                          product.salePrice != '' &&
                          product.regularPrice != null &&
                          product.regularPrice != '')
                        Text(
                          '\$${product.regularPrice}',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: AppColors.textSecondary,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                        ),
                      if (product.salePrice != null &&
                          product.salePrice != '' &&
                          product.regularPrice != null &&
                          product.regularPrice != '')
                        const SizedBox(
                          width: AppSizes.spaceBtwItems * 0.5,
                        ),
                      Text(
                        product.salePrice != null && product.salePrice != ''
                            ? '\$${product.salePrice}'
                            : product.regularPrice != null &&
                                    product.regularPrice != ''
                                ? '\$${product.regularPrice}'
                                : '\$${product.price}',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Spacer(),
                  product.averageRating != null &&
                          double.parse(product.averageRating!) > 0
                      ? RatingBar(
                          initialRating: double.parse(product.averageRating!),
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
                        )
                      : Text('${product.totalSales} Sold'),
                  const SizedBox(height: AppSizes.xs),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
