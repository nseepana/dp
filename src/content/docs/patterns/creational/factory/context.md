---
title: Factory Method
description: Factory Method pattern used to create objects without specifying the exact class of the object that will be created.
---

### Purpose

The purpose of the Factory Method pattern is to allow software developers to create objects while keeping the client code independent of the specific classes of objects being created. This promotes flexibility and extensibility by enabling subclasses to determine which concrete class to instantiate.

### Context

The Factory Method pattern is useful in situations where there is a family of related objects, but the exact class to instantiate needs to be decided at runtime or based on specific conditions. It is beneficial for achieving flexibility, modularity, and code reuse as it allows new types of products to be added without modifying existing client code.

### Participants

1. **Creator**: An abstract class or interface that declares the factory method for creating objects. It may also provide default implementations for common operations that work with the products.

2. **Concrete Creator**: Concrete implementations of the creator class that override the factory method to create specific concrete product instances.

3. **Product**: The abstract class or interface that defines the interface of the objects created by the factory method.

4. **Concrete Product**: Concrete implementations of the product interface that are created by the concrete creator.

### Flow

1. The client code interacts with the abstract creator and product interfaces.

2. When the client needs to create a new object, it calls the factory method declared in the abstract creator.

3. The concrete creator, which is a subclass of the abstract creator, implements the factory method and decides which specific class of product to create.

4. The concrete creator then creates an instance of the concrete product, based on the determined class.

5. The client code can now work with the newly created product object, without being aware of the specific class it belongs to.

6. This flow ensures that the client code remains decoupled from the object creation process, promoting flexibility and making it easier to add new types of products without modifying existing code.

### Real World Scenarios

1. **GUI Component Creation**: Creating various GUI components (buttons, text fields, etc.) in a graphical user interface framework based on user preferences or system settings.

2. **Database Abstraction**: Implementing a database driver that allows the application to work with different database systems (e.g., MySQL, PostgreSQL) seamlessly.

3. **Plugin System**: Developing a plugin architecture where third-party developers can create plugins without modifying the core codebase.

4. **Logging Library**: Building a logging library that can log messages to different outputs (e.g., console, file, remote server) based on configuration.

5. **Game Object Factory**: Designing a game engine with a factory to create various game objects (characters, items) based on in-game events or user actions.

6. **Document Conversion**: Developing a document conversion tool that can convert files to different formats (e.g., PDF to Word, Excel to CSV).

7. **Dependency Injection**: Implementing dependency injection containers that create and inject instances of classes based on their defined interfaces.

8. **UI Theme Selection**: Allowing users to change the UI theme of an application, which dynamically updates the appearance of the entire user interface.

9. **Messaging System**: Creating a messaging system that supports multiple communication protocols (e.g., SMTP, HTTP, WebSocket) for sending and receiving messages.

10. **E-commerce Product Types**: Developing an e-commerce platform that can handle various product types (e.g., physical products, digital downloads, subscriptions) with different purchase flows.


### Mnemonic

**"Product Party"**

Explanation:

**"Product"**: Represents the Factory Method pattern, which allows the creation of various products through a party-like atmosphere of flexibility and extensibility.
**"Party"**: Denotes the gathering of ConcreteProducts, invited by the Concrete Creator, to join the celebration of code reuse and modularity.

Imagine a "Product Party" where the Factory Method pattern acts as the host, responsible for organizing different products (ConcreteProducts) from various categories (Concrete Creators) to join the party. Each product brings its uniqueness to the event, but they all share the joy of being part of the Factory Method pattern. The celebration encourages developers to add new products without altering the existing code, making the party a lively and dynamic occasion.



