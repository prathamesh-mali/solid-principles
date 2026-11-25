
/// Liskov Substitution Principle (LSP)
///
/// Definition:
/// Subtypes should be replaceable for their base types
/// without breaking the correctness of the program.
///
/// In simple terms, if a function accepts a parent type,
/// it should also work correctly with its child types.


/// Abstract class defining a common contract for all beings.
///
/// Every class implementing Being must provide
/// its own implementation of the action() method.
abstract class Being {
  void action();
}


/// Cat implements the Being contract.
///
/// A Cat can be used anywhere a Being object is expected
/// because it provides a valid implementation of action().
class Cat implements Being {
  @override
  void action() {
    print("Cat is performing an action");
  }
}


/// Dog implements the Being contract.
///
/// A Dog can also be used anywhere a Being object is expected
/// without changing the behavior of the calling function.
class Dog implements Being {
  @override
  void action() {
    print("Dog is performing an action");
  }
}


/// This function accepts the parent abstraction (Being)
/// instead of depending on a specific implementation.
///
/// It can work with any valid subtype of Being,
/// such as Cat, Dog, or any future implementation.
void getBeingAction(Being being) {
  being.action();
}


void main() {
  final dog = Dog();
  final cat = Cat();

  // Passing Cat where Being is expected.
  getBeingAction(cat);

  // Passing Dog where Being is expected.
  getBeingAction(dog);
}
