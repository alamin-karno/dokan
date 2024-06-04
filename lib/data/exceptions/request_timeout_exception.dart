import 'package:dokan/data/exceptions/app_exception.dart';

class RequestTimeoutException extends AppException {
  RequestTimeoutException([String? message])
      : super(message, "Request Timeout");
}
