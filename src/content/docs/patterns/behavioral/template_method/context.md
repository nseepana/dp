---
title: Template Method
description: ""
---

## Purpose
The Template Method Pattern is used when there is an algorithm with a fixed structure but certain steps or variations within the algorithm need to be customized by subclasses. It allows the algorithm's structure to be defined in a base class while delegating the implementation of specific steps to the subclasses.

## Context
The Template Method Pattern is applicable when there is a common algorithm that needs to be shared among multiple subclasses, but each subclass may have different implementations for certain steps. It is useful for eliminating code duplication, enforcing consistency in the algorithm, and allowing customization of specific parts of the algorithm.

## Participants

- **AbstractClass**: Defines the abstract class that contains the template method, which provides the overall algorithm's structure. It may also include abstract or default implementations for certain steps.
- **ConcreteClasses**: Implement the abstract class and provide concrete implementations for the abstract or overridden steps. Each subclass customizes the algorithm by providing its own implementation for specific parts.

The Template Method Pattern relies on inheritance to implement the algorithm's structure, allowing subclasses to override and customize specific steps as needed. The template method in the abstract class controls the overall flow of the algorithm by calling the abstract or implemented steps at the appropriate points. This way, the common algorithm's structure is defined once in the base class, ensuring consistency and code reuse.

The Template Method Pattern promotes code reuse, extensibility, and maintainability by providing a framework for defining algorithms that can be easily customized by subclasses. It allows for variations in the behavior of an algorithm without modifying its overall structure, making it a useful pattern for designing flexible and scalable systems.
