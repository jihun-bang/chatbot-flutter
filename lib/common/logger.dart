import 'package:logger/logger.dart' as logger;

class Logger {
  Logger._();

  static final logger.Logger _logger = logger.Logger(
    printer: logger.PrettyPrinter(
      printTime: true,
    ),
  );

  static void d(dynamic message) {
    _logger.d(message);
  }

  static void e(dynamic message, [Object? error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }
}
