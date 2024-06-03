import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/core/utils/validators/validators.dart';
import 'package:dokan/features/shop/controllers/account/account_controller.dart';
import 'package:flutter/material.dart';

class UpdateProfileFormWidget extends StatelessWidget {
  const UpdateProfileFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = AccountController.instance;
    return Form(
      key: controller.accountFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSizes.spaceBtwItems * 0.5),

          /// Email
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.xs),
            child: Text(
              AppStrings.email,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppColors.textInputField),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems * 0.5),
          TextFormField(
            controller: controller.email,
            validator: (value) => AppValidator.validateEmail(value),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              prefixIcon: SizedBox(),
              prefixIconConstraints: BoxConstraints(
                minWidth: AppSizes.spaceBtwItems * 1.5,
              ),
              hintText: AppStrings.emailHints,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          /// Full Name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.xs),
            child: Text(
              AppStrings.fullName,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppColors.textInputField),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems * 0.5),
          TextFormField(
            controller: controller.name,
            validator: (value) =>
                AppValidator.validateEmptyText(AppStrings.fullName, value),
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              prefixIcon: SizedBox(),
              prefixIconConstraints: BoxConstraints(
                minWidth: AppSizes.spaceBtwItems * 1.5,
              ),
              hintText: AppStrings.fullNameHints,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          /// Street Address
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.xs),
            child: Text(
              AppStrings.streetAddress,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppColors.textInputField),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems * 0.5),
          TextFormField(
            controller: controller.streetAddress,
            validator: (value) =>
                AppValidator.validateEmptyText(AppStrings.streetAddress, value),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              prefixIcon: SizedBox(),
              prefixIconConstraints: BoxConstraints(
                minWidth: AppSizes.spaceBtwItems * 1.5,
              ),
              hintText: AppStrings.streetAddressHints,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          /// Apt, Suite, Bldg (optional)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.xs),
            child: Text(
              AppStrings.aptSuite,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppColors.textInputField),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems * 0.5),
          TextFormField(
            controller: controller.aptSuite,
            // validator: (value) => AppValidator.validateEmail(value),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              prefixIcon: SizedBox(),
              prefixIconConstraints: BoxConstraints(
                minWidth: AppSizes.spaceBtwItems * 1.5,
              ),
              hintText: AppStrings.aptSuiteHints,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          /// Zip Code
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.xs),
            child: Text(
              AppStrings.zipCode,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppColors.textInputField),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems * 0.5),
          SizedBox(
            width: 120,
            child: TextFormField(
              controller: controller.zipCode,
              validator: (value) =>
                  AppValidator.validateEmptyText(AppStrings.zipCode, value),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                prefixIcon: SizedBox(),
                prefixIconConstraints: BoxConstraints(
                  minWidth: AppSizes.spaceBtwItems * 1.5,
                ),
                hintText: AppStrings.zipCodeHints,
              ),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),

          /// SAVE AND CANCEL BUTTON
          Row(
            children: [
              Expanded(
                flex: 1,
                child: OutlinedButton(
                  onPressed: () {
                    controller
                        .onAccountPressed(controller.showEditAccount.value);
                  },
                  child: const Text('Cancel'),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwItems * 1.2),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonGreen,
                    side: const BorderSide(color: AppColors.buttonGreen),
                  ),
                  onPressed: () => controller.onSaveAccountInfo(),
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
        ],
      ),
    );
  }
}
