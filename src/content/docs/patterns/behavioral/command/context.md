---
title: Command
description: Command pattern used to encapsulate a request as an object
---

## Purpose
The Command Pattern is used to encapsulate a request as an object, allowing for the decoupling of the sender and receiver of the request. It promotes loose coupling, flexibility, and extensibility by parameterizing clients with different requests and enabling the execution, queuing, logging, and undo/redo of operations.

## Context
The Command Pattern is applicable in situations where there is a need to separate the sender and receiver of a request, and when multiple requests need to be supported, logged, or undone. It is useful in scenarios involving complex or hierarchical command structures, queuing systems, or when implementing undo and redo functionality.

## Participants
- **Command**: Declares the interface or abstract class for executing the request. It typically includes an execute() method that triggers the operation.
- **Concrete Command**: Implements the command interface and encapsulates the specific request and the receiver object. It invokes the corresponding operation on the receiver when execute() is called.
- **Receiver**: Defines the object that performs the actual operation associated with a command. It contains the business logic or functionality to carry out the request.
- **Invoker**: Requests the command to carry out the operation. It holds a reference to the command object and can trigger the execution of the command by calling its execute() method.
- **Client**: Creates the command objects and configures them with specific receivers. It associates the commands with the invokers and triggers the execution of the commands when necessary.

The Command Pattern allows the sender of a request to be decoupled from the receiver, as the command object encapsulates both the request and the receiver. This promotes flexibility, as different requests can be handled by different command objects and executed independently of the sender. It also enables the implementation of queuing systems, logging functionality, and the ability to undo or redo operations.

This pattern supports extensibility, as new commands can be easily added without modifying existing code. It also enables the separation of responsibilities, making code more modular and maintainable. The Command Pattern is commonly used in GUI systems, multi-level menus, remote controls, and other scenarios where the sender and receiver need to be decoupled and requests need to be encapsulated as objects.