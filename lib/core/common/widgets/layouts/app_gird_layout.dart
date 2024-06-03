import 'package:dokan/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class AppGridLayout extends StatelessWidget {
  final int itemCount;

  final double? mainAxisExtent;

  final Widget? Function(BuildContext, int) itemBuilder;

  const AppGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 278,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: AppSizes.gridViewSpacing,
        mainAxisSpacing: AppSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
