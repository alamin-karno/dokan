import 'package:dokan/core/utils/constants/constants.dart';
import 'package:dokan/data/network/networks.dart';
import 'package:dokan/features/personalization/personalization.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _apiService = NetworkApiService();

  Future<UserResponseModel?> getUserProfileInfo() async {
    UserResponseModel? userResponseModel;

    try {
      dynamic response = await _apiService.getApi(
        AppUrls.profileUrl,
        passToken: true,
      );

      userResponseModel = UserResponseModel.fromJson(response);
    } catch (e) {
      throw e.toString();
    }

    return userResponseModel;
  }

  Future<UserResponseModel?> updateUserProfile(
    String userId,
    String firstname,
    String lastname,
  ) async {
    UserResponseModel? userResponseModel;

    try {
      dynamic response = await _apiService.putApi(
        '${AppUrls.updateProfileUrl}/$userId',
        {'first_name': firstname, 'last_name': lastname},
        passToken: true,
      );

      userResponseModel = UserResponseModel.fromJson(response);
    } catch (e) {
      throw e.toString();
    }

    return userResponseModel;
  }
}
