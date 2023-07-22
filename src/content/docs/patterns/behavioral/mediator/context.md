---
title: Mediator
description: ""
---

## Purpose
The Mediator Pattern is used to reduce the direct dependencies between objects and promote loose coupling. It allows for a more structured and controlled communication between objects by introducing a mediator that handles the interactions. It also simplifies the maintenance and extensibility of the system by centralizing the communication logic.

## Context
The Mediator Pattern is applicable when there is a complex set of objects that need to communicate and interact with each other, and direct dependencies between them would lead to tight coupling and increased complexity. It is useful when there is a need for a centralized control and coordination of the interactions, or when adding new objects or changing the communication logic would be challenging.

## Participants

- **Mediator**: Defines the interface or abstract class for communicating with colleagues. It typically includes methods for colleagues to register, send messages, and handle the communication logic.
- **ConcreteMediator**: Implements the mediator interface and manages the communication and coordination between the colleagues. It receives messages from colleagues, determines the appropriate recipients, and forwards the messages accordingly.
- **Colleague**: Defines the interface or abstract class for the objects that communicate through the mediator. It provides methods to send and receive messages, as well as a reference to the mediator.
- **ConcreteColleague**: Implements the colleague interface and interacts with other colleagues through the mediator. It sends and receives messages by invoking the appropriate methods on the mediator.

The Mediator Pattern promotes the decoupling of objects by removing the direct dependencies between them. Instead of objects communicating with each other directly, they communicate through the mediator object. When a colleague wants to send a message, it sends it to the mediator, which then relays the message to the appropriate recipients.

This pattern allows for a more flexible and maintainable system by centralizing the communication logic in the mediator. It simplifies the addition of new colleagues, as they only need to interact with the mediator, without requiring changes to the existing colleagues. It also facilitates the modification of the communication behavior by modifying the mediator, without affecting the colleagues.

The Mediator Pattern is commonly used in complex systems where multiple objects need to interact and communicate indirectly. It helps in managing complex interactions and dependencies, promoting better encapsulation, reusability, and maintainability of the codebase.
