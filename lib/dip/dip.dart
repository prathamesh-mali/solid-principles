
/// Dependency Inversion Principle (DIP)
///
/// Definition:
/// High-level modules should not depend on low-level modules.
/// Both should depend on abstractions.
///
/// Abstractions should not depend on details.
/// Details should depend on abstractions.


/// Abstraction defining a common notification contract.
///
/// Any notification channel, such as Email or SMS,
/// must implement the sendNotification() method.
abstract class NotificationChannel {
  void sendNotification(String message);
}


/// Low-level module: Email notification implementation.
///
/// It implements the NotificationChannel abstraction
/// and provides email-specific notification behavior.
class EmailService implements NotificationChannel {
  @override
  void sendNotification(String message) {
    print("Sending Email: $message");
  }
}


/// Low-level module: SMS notification implementation.
///
/// It also implements NotificationChannel,
/// providing SMS-specific notification behavior.
class SMSService implements NotificationChannel {
  @override
  void sendNotification(String message) {
    print("Sending SMS: $message");
  }
}


/// High-level module: NotificationService.
///
/// It depends on the NotificationChannel abstraction
/// instead of directly depending on EmailService or SMSService.
///
/// Dependency is provided through the constructor.
/// This is an example of constructor dependency injection.
class NotificationService {
  final NotificationChannel notificationChannel;

  const NotificationService(this.notificationChannel);

  void notify(String message) {
    notificationChannel.sendNotification(message);
  }
}


void main() {
  // Injecting EmailService as the notification implementation.
  final emailNotification =
  NotificationService(EmailService());

  emailNotification.notify("Welcome to our application!");

  // Injecting SMSService without modifying NotificationService.
  final smsNotification =
  NotificationService(SMSService());

  smsNotification.notify("Your OTP is 123456");
}
