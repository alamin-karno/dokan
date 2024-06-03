import 'dart:convert';

import 'package:dokan/features/shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  RxBool isLoading = false.obs;

  RxList<ProductModel> products = <ProductModel>[].obs;

  /// LOAD DATA FROM JSON
  Future<void> loadJsonData(BuildContext context) async {
    isLoading.value = true;

    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/raw/response.json");
    final List<dynamic> jsonResult = jsonDecode(data);

    products.value = jsonResult
        .map((productJson) => ProductModel.fromJson(productJson))
        .toList();

    isLoading.value = false;
  }
}
