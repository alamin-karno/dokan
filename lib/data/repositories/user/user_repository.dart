import 'package:dokan/data/network/networks.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _apiService = NetworkApiService();

  void getUserProfileInfo() {}
}
