import 'package:dokan/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AppAnimationLoaderWidget extends StatelessWidget {
  const AppAnimationLoaderWidget({
    super.key,
    this.showAction = false,
    required this.text,
    required this.animation,
    this.actionText,
    this.onActionPressed,
  });

  final bool showAction;
  final String text, animation;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            animation,
            width: MediaQuery.of(context).size.width * 0.8,
          ),
          const SizedBox(height: AppSizes.defaultSpace),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSizes.defaultSpace),
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                    onPressed: onActionPressed,
                    style: OutlinedButton.styleFrom(
                      backgroundColor: AppColors.dark,
                    ),
                    child: Text(
                      actionText ?? '',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: AppColors.light),
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
