import 'package:dokan/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: CircularProgressIndicator(color: Colors.amberAccent),
        ),
      ),
    );
  }
}
