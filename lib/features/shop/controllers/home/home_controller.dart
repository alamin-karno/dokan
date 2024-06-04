import 'dart:convert';

import 'package:dokan/features/shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  RxBool isLoading = false.obs;

  RxString? selectedSort = ''.obs;

  RxList<ProductModel> products = <ProductModel>[].obs;
  RxList<ProductModel> filterProducts = <ProductModel>[].obs;

  RxList<FilterModel> filters = [
    FilterModel(name: 'Newest', value: 'NEWEST', isSelected: false),
    FilterModel(name: 'Oldest', value: 'OLDEST', isSelected: false),
    FilterModel(
      name: 'Price low > High',
      value: 'PRICE_LOW_TO_HIGH',
      isSelected: false,
    ),
    FilterModel(
      name: 'Price high > Low',
      value: 'PRICE_HIGH_TO_LOW',
      isSelected: false,
    ),
    FilterModel(
      name: 'Best selling',
      value: 'BEST_SELLING',
      isSelected: false,
    ),
  ].obs;

  void onFilterItemPressed(String value) {
    for (var filter in filters) {
      filter.isSelected = (filter.value == value);
    }
    selectedSort?.value = value;

    filters.refresh();
  }

  void applyFilters() {
    isLoading.value = true;

    List<ProductModel> filteredList = List.from(products);

    // Apply sorting
    if (selectedSort?.value != null) {
      switch (selectedSort!.value) {
        case 'NEWEST':
          filteredList.sort((a, b) => DateTime.parse(b.dateCreated!)
              .compareTo(DateTime.parse(a.dateCreated!)));
          break;
        case 'OLDEST':
          filteredList.sort((a, b) => DateTime.parse(a.dateCreated!)
              .compareTo(DateTime.parse(b.dateCreated!)));
          break;
        case 'PRICE_LOW_TO_HIGH':
          filteredList.sort((a, b) =>
              double.parse(a.price!).compareTo(double.parse(b.price!)));
          break;
        case 'PRICE_HIGH_TO_LOW':
          filteredList.sort((a, b) =>
              double.parse(b.price!).compareTo(double.parse(a.price!)));
          break;
        case 'BEST_SELLING':
          filteredList.sort((a, b) => b.totalSales!.compareTo(a.totalSales!));
          break;
      }
    }

    filterProducts.value = filteredList;

    isLoading.value = false;

    Get.back();
  }

  void resetFilters() {
    isLoading.value = true;

    for (var filter in filters) {
      filter.isSelected = false;
    }

    selectedSort?.value = '';

    filters.refresh();

    filterProducts.value = products;

    isLoading.value = false;

    Get.back();
  }

  Future<void> loadJsonData(BuildContext context) async {
    isLoading.value = true;

    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/raw/response.json");
    final List<dynamic> jsonResult = jsonDecode(data);

    products.value = jsonResult
        .map((productJson) => ProductModel.fromJson(productJson))
        .toList();

    filterProducts.value = products;

    isLoading.value = false;
  }
}
