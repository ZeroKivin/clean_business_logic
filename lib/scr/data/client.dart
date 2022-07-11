import 'package:clean_business_logic/scr/logger/logger.dart';

abstract class Client {
  Client({
    required this.logger,
  });

  final AppLogger logger;

  void log(Object message) {
    logger.log(message);
  }
}
