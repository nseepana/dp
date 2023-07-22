---
title: Decorator
description: ""
---

## Purpose

The Decorator pattern is used to dynamically add or modify the behavior of an object at runtime without affecting other instances of the same class. It allows for flexible and incremental addition of functionalities to objects without subclassing.

## Context

The Decorator pattern is applicable in situations where you need to enhance or modify the behavior of individual objects while keeping the interface consistent across all objects of a class. It is useful when subclassing is impractical or when you want to avoid the explosion of subclasses for different combinations of features.

## Participants

- **Component**: This is the interface or abstract class that defines the common methods to be implemented by the concrete component and its decorators. It represents the base object to which decorators can be added.
- **Concrete Component**: This is the class that implements the Component interface. It represents the original object to which additional functionalities can be added.
- **Decorator**: This is the abstract class or interface that extends the Component and provides the same interface as the Component. It maintains a reference to a Component instance and can modify its behavior by adding new functionalities before or after invoking the Component's methods.
- **Concrete Decorators**: These are the classes that extend the Decorator class and provide specific additional functionalities to the Component. They can add behaviors or modify existing behaviors of the Component.

In the Decorator pattern, the Decorator classes wrap the Concrete Component and add new behaviors by decorating or modifying its methods. Multiple decorators can be stacked or chained together to add multiple functionalities to the Component. Clients can interact with the Component and its decorators transparently, treating them as the same type (Component).

The Decorator pattern allows for dynamic and flexible modification of object behaviors, promoting code reuse, and minimizing class explosion that can occur with traditional subclassing.

