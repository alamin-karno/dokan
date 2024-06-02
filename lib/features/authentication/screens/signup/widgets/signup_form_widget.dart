import 'package:dokan/core/common/widgets/widgets.dart';
import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/core/utils/validators/validators.dart';
import 'package:dokan/features/authentication/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SinUpFormWidget extends StatelessWidget {
  const SinUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
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
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
              child: TextFormField(
                controller: controller.name,
                validator: (value) =>
                    AppValidator.validateEmptyText(AppStrings.name, value),
                expands: false,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  prefixIcon: SvgPicture.asset(
                    AppImages.people,
                    height: AppSizes.iconSm,
                    width: AppSizes.iconSm,
                    fit: BoxFit.none,
                  ),
                  labelText: AppStrings.name,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            Material(
              elevation: 2,
              clipBehavior: Clip.antiAlias,
              color: AppColors.white,
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
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
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            Obx(
              () => Material(
                elevation: 2,
                clipBehavior: Clip.antiAlias,
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
                child: TextFormField(
                  obscureText: controller.hidePassword.value,
                  controller: controller.password,
                  validator: (value) => AppValidator.validatePassword(value),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      AppImages.password,
                      height: AppSizes.iconSm,
                      width: AppSizes.iconSm,
                      fit: BoxFit.none,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value =
                          !controller.hidePassword.value,
                      icon: Icon(controller.hidePassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye),
                    ),
                    labelText: AppStrings.password,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            Obx(
              () => Material(
                elevation: 2,
                clipBehavior: Clip.antiAlias,
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
                child: TextFormField(
                  obscureText: controller.hideConfirmPassword.value,
                  controller: controller.confirmPassword,
                  validator: (value) => AppValidator.validateConfirmPassword(
                    controller.password.text,
                    value,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      AppImages.password,
                      height: AppSizes.iconSm,
                      width: AppSizes.iconSm,
                      fit: BoxFit.none,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () => controller.hideConfirmPassword.value =
                          !controller.hideConfirmPassword.value,
                      icon: Icon(controller.hideConfirmPassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye),
                    ),
                    labelText: AppStrings.confirmPassword,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.signup(),
                child: const Text(AppStrings.createAccount),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            const SocialButtonsWidget(),
            const SizedBox(height: AppSizes.spaceBtwSections),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppStrings.alreadyHaveAccount,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: AppColors.darkerGrey)),
                TextButton(
                  onPressed: () => Get.back(),
                  child: Text(
                    AppStrings.signIn,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: AppColors.textLink),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
