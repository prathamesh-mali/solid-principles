# SOLID Principles in Flutter & Dart

A practical collection of examples demonstrating the **SOLID principles** using Dart and Flutter.

This repository is created to understand how SOLID principles can be applied to write clean, maintainable, scalable, and loosely coupled code in Flutter/Dart applications.

Rather than focusing only on theoretical definitions, each principle is demonstrated through simple, practical code examples with explanations and comments.

## 📚 What are SOLID Principles?

SOLID is an acronym for five object-oriented design principles that help developers build better software architecture.

These principles were introduced to improve code maintainability, flexibility, extensibility, and testability.

The five SOLID principles are:

| Principle | Full Form | Description |
|---|---|---|
| **S** | Single Responsibility Principle (SRP) | A class should have only one reason to change. |
| **O** | Open-Closed Principle (OCP) | Software entities should be open for extension but closed for modification. |
| **L** | Liskov Substitution Principle (LSP) | Subtypes should be replaceable for their base types without breaking functionality. |
| **I** | Interface Segregation Principle (ISP) | Clients should not be forced to depend on interfaces they don't use. |
| **D** | Dependency Inversion Principle (DIP) | High-level and low-level modules should depend on abstractions rather than concrete implementations. |

## 📂 Repository Structure

```text
solid-principles/
│
├── lib/
│   ├── srp/
│   │   └── srp.dart
│   │
│   ├── ocp/
│   │   └── ocp.dart
│   │
│   ├── lsp/
│   │   └── lsp.dart
│   │
│   ├── isp/
│   │   └── isp.dart
│   │
│   └── dip/
│       └── dip.dart
│
└── README.md
```

*Note: The structure above represents a suggested organization. Adjust it according to the actual files in the repository.*

## 📖 SOLID Principles Explained

### 1. Single Responsibility Principle (SRP)

**Definition:** A class should have only one reason to change.

SRP encourages developers to keep classes focused on a single responsibility instead of handling multiple unrelated tasks.

**Example:** A `Logger` class should be responsible for logging messages. Database operations and API communication should be handled by separate classes.

### 2. Open-Closed Principle (OCP)

**Definition:** Software entities should be open for extension but closed for modification.

OCP allows developers to introduce new functionality without modifying existing, stable code.

**Example:** A logging system can support new logging types by introducing new implementations of a common `Logger` abstraction instead of modifying existing implementations.

### 3. Liskov Substitution Principle (LSP)

**Definition:** Subtypes should be replaceable for their base types without breaking the correctness of the program.

LSP ensures that child classes respect the expected behavior and contract of their parent abstractions.

**Example:** If a function accepts a `Being` object, it should work correctly with implementations such as `Cat` and `Dog`.

### 4. Interface Segregation Principle (ISP)

**Definition:** Clients should not be forced to depend on interfaces they do not use.

ISP encourages developers to create smaller, focused interfaces rather than large interfaces containing unrelated methods.

**Example:** Instead of a single `Machine` interface containing printing, scanning, and faxing methods, create separate `Printer`, `Scanner