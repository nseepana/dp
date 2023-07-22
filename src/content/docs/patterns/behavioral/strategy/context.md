---
title: Strategy
description: ""
---

## Purpose

The Strategy Pattern is used to encapsulate alternative algorithms or strategies for a particular task and make them interchangeable. It enables the selection of the appropriate algorithm at runtime without tightly coupling the client code to a specific implementation.

## Context

The Strategy Pattern is applicable in situations where there are multiple algorithms or strategies available to accomplish a task, and the choice of algorithm needs to be flexible and easily interchangeable. It is useful when different variations of an algorithm need to be encapsulated, or when there is a need to avoid bloated and complex conditional logic.

## Participants

- **Context**: Defines the interface or abstract class that is used by the client code. The context maintains a reference to a strategy object and delegates the task to the strategy for execution.
- **Strategy**: Declares an interface or abstract class that encapsulates the algorithm or strategy. It defines the common operations that the different strategies must implement.
- **Concrete Strategies**: Implement the strategy interface or extend the abstract strategy class, providing specific implementations for the algorithm or strategy. Each concrete strategy encapsulates a different variation or approach.

The Strategy Pattern promotes loose coupling by allowing the client code to interact with the context using a common interface, while the specific strategy implementation is hidden behind that interface. This pattern provides flexibility, as strategies can be easily added or modified without impacting the client code. It also enhances code reusability, readability, and maintainability by separating the algorithmic logic into separate strategy classes.

At runtime, the context can be configured with different strategies, allowing it to dynamically adapt its behavior based on the selected strategy. This enables the application to switch strategies on the fly, making the system more flexible and extensible.
