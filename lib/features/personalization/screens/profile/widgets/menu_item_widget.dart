import 'package:dokan/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    super.key,
    required this.title,
    required this.icon,
    this.arrowIcon = Icons.keyboard_arrow_right_rounded,
    this.onPressed,
  });

  final String title, icon;
  final IconData arrowIcon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      dense: true,
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(
        icon,
        colorFilter: const ColorFilter.mode(
          AppColors.iconArrowColor,
          BlendMode.srcIn,
        ),
      ),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      trailing: Icon(
        arrowIcon,
        size: AppSizes.iconLg,
        color: AppColors.iconArrowColor,
      ),
    );
  }
}
