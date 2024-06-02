import 'package:dokan/features/authentication/authentication.dart';
import 'package:dokan/features/shop/shop.dart';
import 'package:dokan/routes/routes.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: RouteStrings.home,
      page: () => const MainNavigationMenuScreen(),
    ),
    //GetPage(name: RouteStrings.store, page: () => const StoreScreen()),
    //GetPage(name: RouteStrings.store, page: () => const StoreScreen()),
    GetPage(name: RouteStrings.signIn, page: () => const LoginScreen()),
    GetPage(name: RouteStrings.signup, page: () => const SignUpScreen()),
  ];
}
