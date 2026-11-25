
/// Open-Closed Principle (OCP)
///
/// Definition:
/// Software entities should be open for extension
/// but closed for modification.
///
/// This means we should be able to introduce new
/// functionality without changing existing, tested code.


/// Abstract class defining a common contract for all loggers.
///
/// Every logger implementation must provide its own
/// implementation of the log() method.
abstract class Logger {
  void log(String message);
}


/// Concrete implementation of Logger for error messages.
///
/// We implement the Logger contract without modifying
/// the original Logger abstraction.
class ErrorLog implements Logger {
  @override
  void log(String message) {
    print("{ERROR LOG} --> $message");
  }
}


/// Concrete implementation of Logger for success messages.
///
/// This class provides a different logging behavior
/// while following the same Logger contract.
class SuccessLog implements Logger {
  @override
  void log(String message) {
    print("{SUCCESS LOG} --> $message");
  }
}


/// Concrete implementation of Logger for informational messages.
///
/// This is another example of extending the logging functionality
/// without modifying ErrorLog, SuccessLog, or Logger.
class InfoLog implements Logger {
  @override
  void log(String message) {
    print("{INFO LOG} --> $message");
  }
}


/// This function depends on the Logger abstraction
/// rather than a specific logger implementation.
///
/// Therefore, it can work with any class that implements Logger.
void executeLogging(Logger logger, String message) {
  logger.log(message);
}


void main() {
  final Logger errorLogger = ErrorLog();
  final Logger successLogger = SuccessLog();
  final Logger infoLogger = InfoLog();

  executeLogging(errorLogger, "Something went wrong!");
  executeLogging(successLogger, "Operation completed!");
  executeLogging(infoLogger, "Application started!");
}
