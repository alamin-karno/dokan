import 'package:dokan/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class AppSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: AppSizes.appBarHeight,
    bottom: AppSizes.defaultSpace,
    left: AppSizes.defaultSpace * 1.2,
    right: AppSizes.defaultSpace * 1.2,
  );
}
