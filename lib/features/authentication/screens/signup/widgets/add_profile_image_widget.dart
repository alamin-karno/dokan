import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/features/authentication/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddProfileImageWidget extends StatelessWidget {
  const AddProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Material(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(120),
            ),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () => SignupController.instance.chooseImage(),
              child: SizedBox(
                height: 120,
                width: 120,
                child: Center(
                  child: SvgPicture.asset(
                    AppImages.people,
                    height: AppSizes.iconLg,
                    width: AppSizes.iconLg,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(34),
              color: AppColors.primary,
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () => SignupController.instance.chooseImage(),
                child: Container(
                  height: 34,
                  width: 34,
                  decoration: const BoxDecoration(
                    gradient: AppColors.linearGradiant,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      AppImages.camera,
                      height: AppSizes.iconXs,
                      width: AppSizes.iconXs,
                      colorFilter: const ColorFilter.mode(
                        AppColors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
