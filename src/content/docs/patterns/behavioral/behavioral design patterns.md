---
title: behavioral design patterns
description: ""
---
# Behavioral design patterns:

1. Chain of Responsibility Pattern:
   - Avoids coupling the sender of a request to its receivers by giving multiple objects a chance to handle the request.
   - Chains the receiving objects and passes the request along the chain until it is handled or reaches the end.
   - Provides flexibility in dynamically assigning responsibilities.

2. Command Pattern:
   - Encapsulates a request as an object.
   - Decouples the sender of the request from the object that executes the request.
   - Allows parameterization of clients with different requests.
   - Supports operations like undo and redo.

3. Interpreter Pattern:
   - Defines a representation for a grammar of the language and an interpreter to evaluate sentences in the language.
   - Represents grammar rules as objects.
   - Allows parsing and interpreting expressions.

4. Iterator Pattern:
   - Provides a way to access the elements of an aggregate object sequentially without exposing its underlying representation.
   - Defines a common interface for iterating over different types of collections.
   - Eliminates the need for exposing the internal structure of the collection.

5. Mediator Pattern:
    - Defines an object that encapsulates how a set of objects interact.
    - Promotes loose coupling between objects by reducing direct dependencies.
    - Centralizes communication logic by routing messages between objects through the mediator.

6. Memento Pattern:
   - Captures and externalizes an object's internal state without violating encapsulation.
   - Allows an object to be restored to a previous state.
   - Provides undo and redo capabilities.

7. Observer Pattern:
   - Defines a one-to-many dependency between objects.
   - When one object (subject) changes state, all its dependents (observers) are notified and updated automatically.
   - Promotes loose coupling between objects.

8. State Pattern:
   - Allows an object to alter its behavior when its internal state changes.
   - Encapsulates different states as separate classes.
   - Objects delegate the state-specific behavior to the current state object.

9. Strategy Pattern:
   - Defines a family of interchangeable algorithms.
   - Encapsulates each algorithm and makes them interchangeable at runtime.
   - Allows the algorithm to vary independently from the clients that use it.

10. Template Method Pattern:
    - Defines the skeleton of an algorithm in a base class.
    - Allows subclasses to override certain steps of the algorithm without changing its structure.
    - Promotes code reuse and provides a flexible extension point.

11. Visitor Pattern:
    - Separates an algorithm from an object structure on which it operates.
    - Defines new operations without changing the classes of the objects on which it operates.
    - Allows adding new behaviors to an object hierarchy without modifying the classes.

12. Null Object Pattern:
    - Provides a default behavior for classes or interfaces by using a null object.
    - Eliminates the need for null checks in client code.
    - Improves code robustness and reduces NullPointerExceptions.

13. Snapshot Pattern:
    - Captures and restores the internal state of an object without violating encapsulation.
    - Provides a way to roll back or restore an object to a previous state.
    - Supports undo and redo operations.

These additional behavioral patterns offer solutions for various communication, interaction, and algorithmic scenarios in software design. Each pattern has its own purpose and benefits, providing developers with a toolbox of strategies to address specific design challenges.
