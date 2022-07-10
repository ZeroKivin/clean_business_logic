import 'package:clean_business_logic/scr/logger/logger.dart';

abstract class Repository {
  Repository() {
    _logger = AppLogger.logger();
  }

  late final AppLogger _logger;

  void log(Object message) {
    _logger.i(message);
  }
}