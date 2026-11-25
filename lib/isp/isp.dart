
/// Interface Segregation Principle (ISP)
///
/// Definition:
/// Clients should not be forced to depend on interfaces
/// they do not use.
///
/// Instead of creating one large interface,
/// divide it into smaller, specific interfaces.


/// Defines the printing capability.
///
/// Classes implementing this interface must provide
/// their own implementation of printDocument().
abstract class Printer {
  void printDocument(String document);
}


/// Defines the scanning capability.
///
/// Only classes that support scanning need to implement
/// this interface.
abstract class Scanner {
  void scanDocument(String document);
}


/// Basic printer implementation.
///
/// This class only implements Printer because
/// it supports printing but not scanning.
class BasicPrinter implements Printer {
  @override
  void printDocument(String document) {
    print("Printing document: $document");
  }
}


/// Advanced printer implementation.
///
/// This device supports both printing and scanning,
/// so it implements both interfaces.
class MultiFunctionPrinter implements Printer, Scanner {
  @override
  void printDocument(String document) {
    print("Printing document: $document");
  }

  @override
  void scanDocument(String document) {
    print("Scanning document: $document");
  }
}


void main() {
  final basicPrinter = BasicPrinter();
  final multiFunctionPrinter = MultiFunctionPrinter();

  basicPrinter.printDocument("Invoice.pdf");

  multiFunctionPrinter.printDocument("Report.pdf");
  multiFunctionPrinter.scanDocument("Report.pdf");
}
