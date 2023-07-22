---
title: Iterator
description: ""
---

## Purpose
The Iterator Pattern is used to provide a standard way to access the elements of a collection sequentially, regardless of its specific implementation. It promotes encapsulation, decouples the client code from the collection structure, and allows for multiple simultaneous iterations over the same collection.

## Context
The Iterator Pattern is applicable when there is a need to access the elements of a collection without exposing its internal structure, or when there are multiple types of collections that need to be iterated in a uniform manner. It is useful when the client code needs to traverse and process the elements of a collection without being aware of the collection's specific implementation details.

## Participants

- **Iterator**: Defines the interface or abstract class for accessing and traversing the elements of a collection. It typically includes methods like hasNext(), next(), and remove().
- **ConcreteIterator**: Implements the iterator interface and provides the specific implementation for traversing the elements of a particular collection. It keeps track of the current position and handles the iteration logic.
- **Aggregate**: Defines the interface or abstract class for the collection of elements. It includes a method to create an iterator object.
- **ConcreteAggregate**: Implements the aggregate interface and provides the specific implementation for creating an iterator object that is appropriate for the collection.

The Iterator Pattern allows the client code to request an iterator object from the collection, which can be used to sequentially access the elements of the collection. The iterator maintains the state of the traversal and provides methods to move to the next element, check if there are more elements, and retrieve the current element.

This pattern promotes loose coupling between the client code and the collection, as the client only needs to work with the iterator interface without knowing the specifics of the collection's implementation. It enables multiple iterations over the same collection and provides a consistent and uniform way to traverse different types of collections.

The Iterator Pattern simplifies the client code by separating the traversal logic from the collection, making it easier to modify or extend the collection's implementation without affecting the client. It also enhances code readability, maintainability, and reusability by encapsulating the iteration logic in a separate iterator object. The Iterator Pattern is commonly used in programming languages and frameworks to provide a standard way of iterating over collections or data structures.