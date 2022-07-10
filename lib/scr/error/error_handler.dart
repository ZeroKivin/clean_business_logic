import 'package:clean_business_logic/scr/logger/logger.dart';

class ErrorHandler {
  ErrorHandler() {
    _logger = AppLogger.logger;
  }

  late final AppLogger _logger;

  void handleError(Object error) {
    final errorText = error.toString().split('\n')[0];
    _logger.e(errorText);
  }
}