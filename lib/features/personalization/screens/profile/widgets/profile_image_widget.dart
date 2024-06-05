import 'package:cached_network_image/cached_network_image.dart';
import 'package:dokan/core/common/widgets/widgets.dart';
import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/features/personalization/controllers/account/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = AccountController.instance;
    return Stack(
      alignment: Alignment.center,
      children: [
        Obx(
          () {
            if (controller.isLoading.value) {
              return const Center(
                child: CircularButtonWidget(
                  height: 112,
                  width: 112,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            }

            return CachedNetworkImage(
              imageUrl:
                  controller.userResponseModel.value.avatarUrls?.the96 ?? '',
              imageBuilder: (context, imageProvider) => CircleAvatar(
                radius: 55,
                backgroundColor: AppColors.accent,
                foregroundColor: AppColors.accent,
                backgroundImage: imageProvider,
              ),
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => CircularButtonWidget(
                height: 112,
                width: 112,
                child: SvgPicture.asset(
                  AppImages.people,
                  height: 55,
                  width: 55,
                  colorFilter: const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            );
          },
        ),
        SvgPicture.asset(
          AppImages.profileRing,
          height: 128,
          width: 128,
        ),
      ],
    );
  }
}
