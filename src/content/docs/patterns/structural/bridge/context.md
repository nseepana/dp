---
title: Bridge
description: ""
---

## Purpose

The Bridge pattern is used to decouple an abstraction from its implementation, allowing them to vary independently. It aims to provide a stable and flexible relationship between abstractions and their implementations.

## Context

The Bridge pattern is applicable when there is a need to separate an abstraction (high-level component or interface) from its implementation (low-level details or concrete implementation). This separation allows both the abstraction and implementation to evolve independently without being tightly coupled.

## Participants

- **Abstraction**: This participant represents the high-level abstraction or interface. It defines the abstraction's interface and maintains a reference to the implementation object.
- **Refined Abstraction**: A subclass of the Abstraction participant that further defines or adds additional functionality to the abstraction.
- **Implementation**: This participant represents the low-level implementation. It provides the implementation for the operations defined by the abstraction.
- **Concrete Implementation**: A subclass of the Implementation participant that provides a specific implementation of the operations defined by the abstraction.

In the Bridge pattern, the Abstraction participant acts as a bridge between the high-level abstraction and the low-level implementation. The Abstraction maintains a reference to the Implementation participant, which provides the actual implementation details.

The purpose of the Bridge pattern is to enable the abstraction and implementation to vary independently, allowing for flexibility and extensibility. Changes in the abstraction or implementation should not affect each other, as they are kept separate and loosely coupled.

By utilizing the Bridge pattern, you can create a more modular and flexible design where the abstraction and implementation can evolve independently to meet changing requirements.

