---
title: Chain of Responsibility
description: Chain of Responsibility is a behavioral design pattern that allows an object to pass a request along a chain of potential handlers until one of them handles the request.
---

### Purpose

The purpose of the Chain of Responsibility Pattern is to handle requests in a flexible and decoupled manner. It enables a request to traverse through a chain of handlers, where each handler can either handle the request or pass it along to the next handler. This pattern aims to achieve a dynamic and reusable way of processing requests, allowing easy addition or modification of handlers without affecting the overall request handling process.

### Context

The Chain of Responsibility Pattern is applicable in scenarios where there are multiple possible handlers for a request, and the specific handler needs to be determined at runtime. It is beneficial when there is a need to separate the sender of the request from its receivers and when the exact handling logic may vary or change over time.

### Participants

- **Handler:** This participant represents a contract or an abstract class that defines the interface for handling requests. It consists of a method for processing the request and a reference to the next handler in the chain. Handlers can either handle the request themselves or delegate it to the next handler in line.

- **ConcreteHandler:** These participants are the concrete implementations of the Handler interface. Each ConcreteHandler handles requests according to its specific responsibility. If a ConcreteHandler can process the request, it does so; otherwise, it delegates the request to the next handler in the chain.

- **Client:** The Client initiates the request and starts the chain of handlers. It is unaware of the specific handlers in the chain and their order. The Client simply sends the request to the first handler, and the handling process cascades through the chain until a suitable handler processes the request.

### Flow

1. The Client sends a request to the first handler in the chain.
2. The first handler, a ConcreteHandler, checks if it can process the request. If it can, it handles the request and completes the process.
3. If the first handler cannot handle the request, it delegates the request to the next handler in the chain.
4. The next handler, another ConcreteHandler, follows the same steps as the previous one. It checks if it can handle the request and either processes it or delegates it further.
5. This process continues through the chain of handlers until a ConcreteHandler successfully handles the request or until the request reaches the end of the chain.
6. If the request reaches the end of the chain without being handled, it may result in an appropriate response, depending on the implementation.

The Chain of Responsibility Pattern promotes flexibility and extensibility in handling requests. New handlers can be added to the chain without modifying the existing code, providing a way to dynamically configure the request handling flow. By decoupling the sender from the receivers of the request, the pattern enhances maintainability and allows for more manageable code.

### Real world scenarios

The Chain of Responsibility pattern finds its application in various real-world scenarios in software development. Some of the common use cases are:

1. **Logging Handlers**: In logging systems, different handlers can be responsible for logging messages based on their severity, allowing flexible and dynamic handling of log entries.

2. **User Authentication**: In authentication systems, a chain of handlers can verify user credentials, with each handler responsible for a specific authentication method or step.

3. **Error Handling**: In error handling, multiple handlers can process different types of errors, enabling graceful recovery or escalation of errors.

4. **Middleware in Web Frameworks**: Middleware components in web frameworks can form a chain to process incoming requests, performing tasks such as authentication, caching, or logging.

5. **Event Handling**: In event-driven systems, a chain of event handlers can be used to process events, with each handler handling specific events based on their type.

6. **Validation Chains**: In input validation, different validators can be linked together to validate user input, ensuring data integrity and correctness.

7. **File Processing Pipelines**: In data processing pipelines, a chain of handlers can process data files, with each handler performing specific transformations or filtering.

8. **Message Routing**: In message-based systems, a chain of message routers can direct messages to appropriate destinations based on their content or attributes.

9. **Transaction Handling**: In transaction processing, a chain of handlers can be used to manage complex transactional operations in a coordinated manner.

10. **API Middleware**: In API development, middleware components can be chained together to handle tasks like rate limiting, request/response logging, and error handling.

11. **Parsing and Lexing**: In language processing or parsing tasks, the Chain of Responsibility pattern can be applied to break down the input into a sequence of tokens. Each handler represents a specific rule or pattern, and the input is processed through the chain to identify the correct tokens.

12. **Robotics and Robotic Control**: In robotics, the pattern can be applied to process commands or sensor data through a chain of modules responsible for different tasks in robot control and decision-making.

13. **Command and Action Handling**: In command design patterns, such as the Command Pattern, the Chain of Responsibility can be utilized to handle commands or actions by passing them through a chain of command objects.


### Mnemonic

**"Pass the Buck"**

Explanation:

- **"Pass"**: Think of the handlers passing the request along the chain.
- **"the"**: The request is passed from one handler to the next.
- **"Buck"**: The request is like a problem or responsibility (the **"buck"**), and each handler can either handle it or pass it along to the next one.

So, **"Pass the Buck"** can remind you that the Chain of Responsibility Pattern involves passing a request through a chain of handlers, where each handler decides whether to handle it or pass it to the next one. This helps to achieve flexibility and decoupling in handling requests.

