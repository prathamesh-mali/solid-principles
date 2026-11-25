
/// Single Responsibility Principle (SRP)
///
/// Definition:
/// A class should have only one reason to change.
///
/// This means a class should have one clearly defined
/// responsibility instead of handling multiple unrelated tasks.


/// Logger class has only one responsibility:
/// Logging messages.
///
/// It accepts a message and prints it to the console.
/// It does not handle database operations, API calls,
/// or file management.
class Logger {

  const Logger();

  void log(String message) {
    print("{LOGGER} --> $message");
  }
}


void main() {
  const Logger logger = Logger();

  logger.log("Application started");
  logger.log("User logged in successfully");
}
