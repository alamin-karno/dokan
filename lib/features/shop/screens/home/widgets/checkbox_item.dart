import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/features/shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckBoxItemWidget extends StatelessWidget {
  const CheckBoxItemWidget({super.key, required this.filter});

  final FilterModel filter;

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      onTap: () {
        controller.onFilterItemPressed(filter.value);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.sm),
        child: Row(
          children: [
            SvgPicture.asset(
              filter.isSelected
                  ? AppImages.checkboxSelected
                  : AppImages.checkbox,
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(filter.name),
          ],
        ),
      ),
    );
  }
}
