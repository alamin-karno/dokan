import 'package:dokan/bindings/general_bindings.dart';
import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/core/utils/theme/theme.dart';
import 'package:dokan/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.pages,
      initialBinding: GeneralBindings(),
      home: const Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: CircularProgressIndicator(color: Colors.amberAccent),
        ),
      ),
    );
  }
}
