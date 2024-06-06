import 'package:dokan/core/common/models/common_response_model.dart';
import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/core/utils/local_storage/app_local_storage.dart';
import 'package:dokan/data/network/networks.dart';
import 'package:dokan/features/authentication/authentication.dart';
import 'package:dokan/features/personalization/personalization.dart';
import 'package:dokan/features/shop/shop.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _deviceStorage = GetStorage();
  final _apiService = NetworkApiService();

  final _accountController = Get.put(AccountController());
  final _homeController = Get.put(HomeController());

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirection();
    super.onReady();
  }

  Future<void> screenRedirection() async {
    String? token = _deviceStorage.read('token');

    if (token != null && token != '') {
      await AppLocalStorage.init(token);

      _accountController.loadAccountInfo();

      _homeController.loadJsonData(Get.context!);

      Get.offAll(() => const MainNavigationMenuScreen());
    } else {
      Get.offAll(() => const LoginScreen());
    }
  }

  Future<LoginResponseModel?> signInWithUserNameAndPassword(
    String username,
    String password,
  ) async {
    LoginResponseModel? loginResponseModel;

    try {
      dynamic response = await _apiService.postApi(
        AppUrls.loginUrl,
        {'username': username, 'password': password},
        isUrlEncoded: true,
      );

      loginResponseModel = LoginResponseModel.fromJson(response);

      _deviceStorage.write('token', loginResponseModel.token);
    } catch (e) {
      throw e.toString();
    }

    return loginResponseModel;
  }

  Future<CommonResponseModel?> registerUser(
    String username,
    String email,
    String password,
  ) async {
    CommonResponseModel? commonResponseModel;

    try {
      dynamic response = await _apiService.postApi(
        AppUrls.registerUrl,
        {'username': username, 'email': email, 'password': password},
      );

      commonResponseModel = CommonResponseModel.fromJson(response);
    } catch (e) {
      throw e.toString();
    }

    return commonResponseModel;
  }

  Future<void> signOut() async {
    await _deviceStorage.remove('token');
    screenRedirection();
  }
}
