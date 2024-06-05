import 'package:dokan/data/exceptions/app_exception.dart';

class BadRequestExceptions extends AppException {
  BadRequestExceptions([String? message]) : super(message, "Bad Request");
}
