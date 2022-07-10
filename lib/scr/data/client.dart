import 'package:clean_business_logic/scr/endpoint/endpoint.dart';
import 'package:clean_business_logic/scr/logger/logger.dart';

abstract class Client {
  Client() {
    _logger = AppLogger.logger;
  }

  late final AppLogger _logger;

  String createUrl<T extends Endpoint>(T endpoint) {
    final uri = endpoint.create();
    final url = uri.toString();

    return url;
  }

  void log(Object message) {
    _logger.i(message);
  }
}