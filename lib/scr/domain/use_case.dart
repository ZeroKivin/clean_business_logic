import 'package:clean_business_logic/scr/error/error_handler.dart';
import 'package:clean_business_logic/scr/logger/logger.dart';

abstract class UseCase {
  UseCase(this._errorHandler) {
    _logger = AppLogger.logger();
  }

  final ErrorHandler _errorHandler;
  late final AppLogger _logger;

  void handleError(Object error) {
    _errorHandler.handleError(error);
  }

  void log(Object message) {
    _logger.i(message);
  }
}
