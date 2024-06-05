import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/core/utils/validators/validators.dart';
import 'package:dokan/features/personalization/personalization.dart';
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

          /// First Name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.xs),
            child: Text(
              AppStrings.firstName,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppColors.textInputField),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems * 0.5),
          TextFormField(
            controller: controller.firstName,
            validator: (value) =>
                AppValidator.validateEmptyText(AppStrings.firstName, value),
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              prefixIcon: SizedBox(),
              prefixIconConstraints: BoxConstraints(
                minWidth: AppSizes.spaceBtwItems * 1.5,
              ),
              hintText: AppStrings.firstNameHints,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          /// Last Name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.xs),
            child: Text(
              AppStrings.lastName,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppColors.textInputField),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems * 0.5),
          TextFormField(
            controller: controller.lastName,
            validator: (value) =>
                AppValidator.validateEmptyText(AppStrings.lastName, value),
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              prefixIcon: SizedBox(),
              prefixIconConstraints: BoxConstraints(
                minWidth: AppSizes.spaceBtwItems * 1.5,
              ),
              hintText: AppStrings.lastNameHints,
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
            keyboardType: TextInputType.streetAddress,
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
            keyboardType: TextInputType.streetAddress,
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
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
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
