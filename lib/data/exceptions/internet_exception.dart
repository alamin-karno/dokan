import 'package:dokan/data/exceptions/app_exception.dart';

class InternetException extends AppException {
  InternetException([String? message])
      : super(message, "No Internet Connection");
}
