---
title: Strategy
description: Strategy pattern used to change the behavior of an object based on its state
---

**Strategy Design Pattern**

### Purpose


The Strategy design pattern is a behavioral design pattern that enables the selection of algorithms or behaviors at runtime. It provides a way to encapsulate interchangeable strategies or algorithms and allows clients to choose the appropriate strategy without affecting the client code. This pattern promotes flexibility and modularity in software design by decoupling the algorithm implementation from the client code.

### Context


In software development, there are situations where multiple algorithms or behaviors can achieve the same goal. However, choosing a specific algorithm at compile-time may not be suitable for all scenarios. The Strategy pattern is applicable when a system needs to support multiple interchangeable strategies that can be dynamically selected based on different conditions or requirements.

### Participants

1. ### Context

 This is the client object that maintains a reference to the strategy object and delegates the algorithm execution to the strategy interface.
2. **Strategy:** This is the interface or abstract class that defines the contract for different algorithms or strategies. It declares the method(s) that the Context object will use to invoke the algorithm.
3. **ConcreteStrategy:** These are the concrete implementations of the Strategy interface, representing specific algorithms or behaviors. Each ConcreteStrategy provides a different approach to solving a problem.
4. **Client:** The client is responsible for creating the Context object and selecting a specific strategy at runtime. It interacts with the Context using the Strategy interface.

### Flow

1. The client creates a Context object and obtains a reference to the Strategy interface.
2. The Context object stores the reference to the selected strategy, which is initially set to a default or a pre-defined strategy.
3. At runtime, when the client needs to execute a specific algorithm, it calls a method on the Context object, passing the necessary data.
4. The Context object delegates the execution of the algorithm to the currently set ConcreteStrategy.
5. Since all ConcreteStrategy objects implement the same Strategy interface, the Context doesn't need to know the specific details of the algorithm.
6. If the client wants to switch to a different algorithm, it can change the strategy by setting a new ConcreteStrategy on the Context.
7. The Context will now delegate the algorithm execution to the newly set ConcreteStrategy.

### Real World Scenarios

1. **Payment Processing**: Different payment gateways can be used interchangeably for processing payments in an e-commerce application using the Strategy pattern.
2. **Sorting Algorithms**: Implementing various sorting algorithms (e.g., bubble sort, quicksort) can be dynamically selected based on data size and type.
3. **File Compression**: Switching between different compression algorithms (e.g., gzip, zlib) based on file types in a file compression utility.
4. **Game AI Strategies**: Employing different AI strategies (e.g., aggressive, defensive) for enemy characters in a video game using the Strategy pattern.
5. **Routing Algorithms**: Dynamically selecting the best routing algorithm (e.g., Dijkstra, A* search) for optimal pathfinding in a navigation system.
6. **Logging Mechanism**: Applying different logging strategies (e.g., console logging, file logging) based on the severity of log messages.
7. **Image Filters**: Using multiple image filters (e.g., grayscale, sepia) that can be switched at runtime in an image processing application.
8. **Authentication Strategies**: Employing various authentication methods (e.g., OAuth, JWT) based on the requirements of a web application.
9. **Email Notification**: Choosing different email sending strategies (e.g., SMTP, API-based) in an email notification system.
10. **Machine Learning Algorithms**: Dynamically selecting different ML algorithms (e.g., linear regression, decision trees) for data analysis tasks.

### Mnemonic

**"Dynamic Dance"**

Explanation:

**"Dynamic"**: Represents the Strategy pattern's core essence, enabling the dynamic selection of algorithms or behaviors at runtime, just like dancers changing their moves in real-time based on the music.

**"Dance"**: Denotes the participants in the Strategy pattern, where different "dancers" (ConcreteStrategy implementations) showcase their unique "dance moves" (algorithms) under the guidance of the "choreographer" (Context). The "dance floor" symbolizes the system, where different dancers can gracefully join the dance party without disturbing the ongoing performances. The rhythm and harmony of the "dance" showcase the flexibility and modularity achieved through the Strategy pattern.
