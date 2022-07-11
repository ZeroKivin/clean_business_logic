import 'package:clean_business_logic/scr/data/data.dart';
import 'package:clean_business_logic/scr/error/error_handler.dart';
import 'package:clean_business_logic/scr/logger/logger.dart';

abstract class UseCase<I extends IRepository> {
  UseCase({
    required this.repository,
    required this.errorHandler,
    required this.logger,
  });

  final ErrorHandler errorHandler;
  final AppLogger logger;
  final I repository;

  void handleError(Object error) {
    errorHandler.handleError(error);
  }

  void log(Object message) {
    logger.log(message);
  }
}
