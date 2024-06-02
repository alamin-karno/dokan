import 'package:dokan/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  final widgetBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetBinding);

  FlutterNativeSplash.remove();

  runApp(const MyApp());
}
