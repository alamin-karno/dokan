import 'package:dokan/app.dart';
import 'package:dokan/data/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

void main() {
  final widgetBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetBinding);

  Get.put(AuthenticationRepository());

  runApp(const MyApp());
}
