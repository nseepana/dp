---
title: Visitor
description: ""
---

## Purpose

The Visitor Pattern is used to define a new operation or behavior that can be applied to a group of related objects, without modifying the classes of those objects. It allows for the addition of new operations without modifying the object structure, promoting flexibility and extensibility.

## Context

The Visitor Pattern is applicable in scenarios where there is a need to perform operations on a group of objects with different types or classes. It is useful when the behavior or operations to be performed on the objects are unrelated or may change frequently, and modifying the objects themselves is not desirable or feasible.

## Participants

- **Visitor**: Defines the interface or abstract class for the operations to be performed on the elements. Each operation is typically defined as a separate method in the visitor interface.
- **ConcreteVisitor**: Implements the visitor interface and provides the actual implementation for each operation defined in the visitor interface. Each concrete visitor performs a specific operation on the elements.
- **Element**: Defines the interface or abstract class for the elements on which the operations will be performed. It typically declares an accept method that accepts a visitor object.
- **ConcreteElement**: Implements the element interface and provides the accept method implementation. It accepts a visitor and delegates the operation to the visitor.
- **Object Structure**: Represents the collection or structure of elements on which the visitor operates. It provides methods to add, remove, or retrieve elements and typically implements iteration over the elements.

The Visitor Pattern allows new operations to be added to the elements by simply defining a new visitor and implementing the desired operation in the concrete visitor class. The elements accept the visitor, which performs the operation on each element independently of their specific type or class.

This pattern promotes separation of concerns by separating the behavior or operations from the object structure. It also enables the open-closed principle, allowing new operations to be added without modifying the existing element classes. The Visitor Pattern provides a way to extend the functionality of existing objects without modifying their implementation, making it a powerful tool for managing complex operations and maintaining code modularity.
