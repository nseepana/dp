---
title: Facade
description: ""
---

## Purpose

The Facade pattern provides a simplified interface or facade to a complex system, allowing clients to interact with the system in a more straightforward and unified way. It encapsulates the complexity of the underlying subsystems and provides a higher-level interface for clients to access their functionalities.

## Context

The Facade pattern is useful when you have a complex system or set of classes with intricate dependencies and interactions. It helps to simplify the usage of the system by providing a single entry point and hiding the complexities of the subsystems. It promotes loose coupling and reduces dependencies between the clients and the subsystems.

## Participants

- **Facade**: This is the central class that provides a unified interface to the complex subsystems. It simplifies the usage and shields the clients from the complexity of the underlying system.
- **Subsystem classes**: These are the classes that make up the complex system or set of related functionalities. They may have intricate dependencies and interactions among themselves.
- **Client**: The client interacts with the facade to access the functionalities of the complex system. It doesn't need to directly interact with the subsystem classes.

In the Facade pattern, the facade class acts as a simplified interface or entry point to the complex subsystems. It orchestrates the interactions between the clients and the subsystems, abstracting away the details and complexities. Clients can simply invoke methods on the facade without needing to understand or manage the interactions with the subsystems directly.

The Facade pattern helps to improve the usability, maintainability, and flexibility of a system by providing a simplified interface and decoupling the clients from the complexities of the subsystems. It promotes a higher level of abstraction and encapsulation, making it easier to use and understand the overall system.

