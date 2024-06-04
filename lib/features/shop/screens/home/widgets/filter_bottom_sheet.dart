import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/features/shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return PopScope(
      canPop: false,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// FILTER BAR
              Center(
                child: Container(
                  height: 4,
                  width: 65,
                  decoration: BoxDecoration(
                    color: AppColors.bottomSheetBar,
                    borderRadius:
                        BorderRadius.circular(AppSizes.borderRadiusSm),
                  ),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// TITLE
              Text(
                'Filter',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// FILTER OPTION
              ListView.builder(
                itemCount: controller.filters.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return Obx(
                    () => CheckBoxItemWidget(filter: controller.filters[index]),
                  );
                },
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// APPLY AND CANCEL BUTTON
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: OutlinedButton(
                      onPressed: () => controller.resetFilters(),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(color: AppColors.textSecondary),
                      ),
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
                      onPressed: () => controller.applyFilters(),
                      child: const Text('Apply'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
