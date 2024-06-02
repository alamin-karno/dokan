import 'package:dokan/features/authentication/authentication.dart';
import 'package:dokan/routes/routes.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final pages = [
    //GetPage(name: RouteStrings.home, page: () => const HomeScreen()),
    //GetPage(name: RouteStrings.store, page: () => const StoreScreen()),
    // GetPage(name: RouteStrings.signup, page: () => const SignUpScreen()),,
    //GetPage(name: RouteStrings.store, page: () => const StoreScreen()),
    GetPage(name: RouteStrings.signIn, page: () => const LoginScreen())
  ];
}
