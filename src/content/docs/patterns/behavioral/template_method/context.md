---
title: Template Method
description: Template Method pattern used to define the skeleton of an algorithm in a base class and let subclasses override the steps without changing the overall algorithm's structure.
---

### Purpose


The Template Method design pattern is a behavioral pattern that defines the outline or skeleton of an algorithm, allowing certain steps to be customized by subclasses while maintaining the overall structure intact. It promotes code reusability and encapsulation of common algorithms in a base class, enabling subclasses to implement specific steps without changing the algorithm's structure.

### Context


In software development, there are often scenarios where multiple algorithms share a common structure but differ in some specific implementation details. Instead of duplicating the shared code in each algorithm, the Template Method pattern provides a way to abstract the common steps into a base class and let subclasses customize the variations.

### Participants

1. **AbstractClass:** This is the base class that defines the template method, which represents the overall algorithm structure. It contains abstract methods (or default implementations) representing the steps that subclasses can customize.
2. **ConcreteClass:** These are the subclasses that extend the AbstractClass and provide specific implementations for the customizable steps defined in the template method.

### Flow

1. The AbstractClass declares the template method, which is the core algorithm, as a series of steps or operations. Some of these steps are declared as abstract methods (placeholders), and others may have default implementations.
2. ConcreteClass subclasses extend the AbstractClass and provide concrete implementations for the abstract methods declared in the template method.
3. When a client code wants to use the algorithm, it interacts with the AbstractClass, not directly with the ConcreteClass. This allows the client to treat different subclasses uniformly and use the template method without worrying about the specific details of the algorithm.
4. The template method in the AbstractClass orchestrates the overall algorithm by calling the predefined steps. The abstract methods in the AbstractClass will be called during this process, allowing the ConcreteClass instances to customize the algorithm's behavior.
5. The ConcreteClass subclasses override the abstract methods to implement the specific behavior they need, effectively customizing the steps of the template method without changing its structure.

### Real World Scenarios

1. **HTTP Request Handling**: Template Method pattern used to process incoming HTTP requests with different handling steps for various endpoints.
2. **Database Schema Migration**: Template Method pattern used to define the overall structure for database schema migrations while allowing specific migration scripts to be customized.
3. **Game Development**: Template Method pattern employed to create different game levels with shared logic and customized enemy behavior.
4. **Report Generation**: Template Method pattern used to generate various types of reports with consistent headers, footers, and customizable content sections.
5. **Data Serialization**: Template Method pattern applied to serialize data into different formats (JSON, XML, etc.) with a common serialization algorithm structure.
6. **Algorithm Plugin System**: Template Method pattern utilized in building a plugin system with a standard execution flow for user-defined algorithms.
7. **UI Framework**: Template Method pattern employed in a UI framework to define common behavior for creating and displaying different types of UI components.
8. **Sorting Algorithms**: Template Method pattern used to create various sorting algorithms (e.g., bubble sort, merge sort) with a shared sorting algorithm structure.
9. **Authentication Process**: Template Method pattern applied to standardize the authentication process with customizable steps for different authentication methods.
10. **Code Generation**: Template Method pattern used in code generation tools to generate code for different programming languages with consistent structure and customizable code snippets.

### Mnemonic

**"Algorithmic Ballroom"**

Explanation:

**"Algorithmic"**: Represents the Template Method pattern, which defines an algorithmic structure with customizable steps, just like a choreographed dance.

**"Ballroom"**: Refers to the diverse "dance partners" (ConcreteClass subclasses) that participate in the ballroom, each showcasing their unique dance moves (customized steps) while adhering to the overall dance routine (template method). The ballroom symbolizes the elegant and organized flow of the Template Method pattern, where different partners can gracefully join in without disturbing the dance's rhythm. The dance instructors (AbstractClass) orchestrate the dance, guiding each partner through their moves and ensuring a harmonious performance.

