import 'package:clean_business_logic/scr/data/client.dart';
import 'package:clean_business_logic/scr/logger/logger.dart';

abstract class Repository<T extends Client> {
  Repository({
    required this.client,
    required this.logger,
  });

  final AppLogger logger;
  final T client;

  void log(Object message) {
    logger.log(message);
  }
}