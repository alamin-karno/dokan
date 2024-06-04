import 'package:dokan/core/utils/constants/constants.dart';

class ApiResponse<T> {
  ResponseStatus? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = ResponseStatus.loading;
  ApiResponse.completed(this.data) : status = ResponseStatus.complete;
  ApiResponse.error(this.message) : status = ResponseStatus.error;

  @override
  String toString() {
    return 'Status: $status\nMessage: $message\nData: $data';
  }
}
