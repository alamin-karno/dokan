import 'dart:convert';
import 'dart:io';

import 'package:dokan/data/exceptions/exceptions.dart';
import 'package:dokan/data/network/networks.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiServices {
  @override
  Future getApi(String url) async {
    dynamic responseJson;

    try {
      final response = await http.get(Uri.parse(url)).timeout(
            const Duration(seconds: 10),
          );

      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('No Internet connection!');
    } on RequestTimeoutException {
      throw RequestTimeoutException('Request Timeout!');
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrlException('');
      default:
        throw FetchDataException(
          'Error occurred while communicating with server: ${response.statusCode}',
        );
    }
  }
}
