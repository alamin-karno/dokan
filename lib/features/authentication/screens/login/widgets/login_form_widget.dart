import 'package:dokan/core/common/widgets/widgets.dart';
import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/core/utils/validators/validators.dart';
import 'package:dokan/features/authentication/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            Material(
              elevation: 2,
              clipBehavior: Clip.antiAlias,
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
              child: TextFormField(
                controller: controller.email,
                validator: (value) => AppValidator.validateEmail(value),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  prefixIcon: SvgPicture.asset(
                    AppImages.email,
                    height: AppSizes.iconSm,
                    width: AppSizes.iconSm,
                    fit: BoxFit.none,
                  ),
                  labelText: AppStrings.email,
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            Obx(
              () => Material(
                elevation: 2,
                clipBehavior: Clip.antiAlias,
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12),
                child: TextFormField(
                  controller: controller.password,
                  validator: (value) => AppValidator.validatePassword(value),
                  obscureText: controller.hidePassword.value,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      AppImages.password,
                      height: AppSizes.iconSm,
                      width: AppSizes.iconSm,
                      fit: BoxFit.none,
                    ),
                    labelText: AppStrings.password,
                    suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value =
                          !controller.hidePassword.value,
                      icon: Icon(
                        controller.hidePassword.value
                            ? Iconsax.eye_slash
                            : Iconsax.eye,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  // onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                  onPressed: () {},
                  child: const Text(
                    AppStrings.forgetPassword,
                    style: TextStyle(color: AppColors.darkGrey),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () => controller.signInWithUserNameAndPassword(),
                child: const Text(AppStrings.signIn),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            const SocialButtonsWidget(),
            const SizedBox(height: AppSizes.spaceBtwSections),
            TextButton(
              // onPressed: () => Get.to(() => const ForgetPasswordScreen()),
              onPressed: () {},
              child: Text(
                AppStrings.createAccount,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: AppColors.darkerGrey),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}