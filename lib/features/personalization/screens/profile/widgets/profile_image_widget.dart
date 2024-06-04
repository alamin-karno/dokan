import 'package:dokan/core/common/widgets/widgets.dart';
import 'package:dokan/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: CircularButtonWidget(
            height: 112,
            width: 112,
            child: Image.network(
              'https://avatars.githubusercontent.com/u/56608168?v=4',
            ),
          ),
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
