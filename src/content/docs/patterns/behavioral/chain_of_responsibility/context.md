---
title: Chain of Responsibility
description: ""
---

## Purpose
The Chain of Responsibility Pattern is used to achieve decoupling of the sender and receiver of a request. It allows multiple objects to have a chance to handle the request, without the sender needing to know which object will handle it. It provides flexibility in dynamically configuring and altering the chain of handlers.

## Context
The Chain of Responsibility Pattern is applicable when there are multiple objects that can handle a request, and the handler needs to be determined dynamically at runtime. It is useful when there is a need to decouple the sender and receiver, and when the exact handling object is not known or may change.

## Participants

- **Handler**: Defines the interface or abstract class for handling the requests. It usually contains a method for handling the request and a reference to the next handler in the chain.
- **ConcreteHandler**: Implements the handler interface and provides the specific implementation for handling the request. It has the option to handle the request or pass it to the next handler in the chain.
- **Client**: Initiates the request and starts the chain of handlers. It is unaware of the specific handlers and their order in the chain.

The Chain of Responsibility Pattern allows the sender of the request to pass it to the first handler in the chain. Each handler then decides whether to handle the request or pass it to the next handler in the chain. This process continues until the request is handled or reaches the end of the chain.

The pattern promotes flexibility and extensibility, as new handlers can be easily added to the chain without affecting the client code. It also allows for dynamic configuration of the chain, as the order or composition of the handlers can be changed at runtime. This promotes loose coupling and enhances the maintainability of the codebase.

The Chain of Responsibility Pattern is commonly used in scenarios where there are multiple levels of request handling or when there is a need to decouple the sender from the receivers of a request. It provides a structured way to handle and process requests with various levels of complexity and business rules.
