import 'package:dokan/data/exceptions/app_exception.dart';

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, "Error while communicating!");
}
