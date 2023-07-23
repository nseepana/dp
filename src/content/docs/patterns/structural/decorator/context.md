---
title: Decorator
description: Decorator is a structural design pattern that lets you attach new behaviors to objects by placing these objects inside special wrapper objects that contain the behaviors.

---

### Purpose

The purpose of the Decorator pattern in software development is to modify the behavior of an object dynamically without affecting other instances of the same object class. It provides a flexible way to add or change functionalities to objects without creating multiple subclasses.

### Context

The Decorator pattern is useful when you need to enhance or modify the behavior of individual objects while keeping the same interface for all objects in a class. It's applicable in situations where creating numerous subclasses for different combinations of features is impractical or undesirable.

### Participants

The Decorator pattern involves the following participants:

1. **Component**: This is an interface or abstract class that defines common methods to be implemented by the concrete component and its decorators. It acts as the base object to which decorators can be added.

2. **Concrete Component**: This class implements the Component interface and represents the original object to which additional functionalities can be added.

3. **Decorator**: An abstract class or interface that extends the Component and provides the same interface. It maintains a reference to a Component instance and can modify its behavior by adding new functionalities before or after invoking the Component's methods.

4. **Concrete Decorators**: These classes extend the Decorator class and provide specific additional functionalities to the Component. They can add new behaviors or modify existing ones of the Component.

### Flow

1. The Component defines the blueprint for objects, specifying the common methods that all objects in its class should have.

2. The Concrete Component is the actual object that follows the Component's blueprint, implementing the required methods.

3. Decorator classes, extending the Decorator, provide instructions on how to modify the object's behavior. They follow the same blueprint as the Component and can add new functionalities.

4. Concrete Decorators add extra features to the object by implementing specific instructions. They can modify or extend the object's behavior as needed.

5. At runtime, developers can dynamically add or remove decorators to modify the object's behavior without affecting other objects of the same class.


### Real World Scenarios

1. **Logging Decorator**: Adding logging functionality to methods in a class without modifying the class itself.
2. **Encryption Decorator**: Applying encryption to data before it is stored or transmitted, transparently to the core logic.
3. **Authentication Middleware**: Checking user authentication before allowing access to specific endpoints in a web application.
4. **Caching Decorator**: Storing the results of expensive operations in cache to improve performance.
5. **Authorization Filter**: Granting or denying access to certain resources based on user roles and permissions.
6. **Compression Decorator**: Compressing data before sending it over a network to reduce bandwidth usage.
7. **Input Validation Middleware**: Validating and sanitizing user input to prevent security vulnerabilities.
8. **Localization Decorator**: Adding language-specific translations to text displayed in an application.
9. **Retry Policy**: Automatically retrying failed API calls to improve system reliability.
10. **Transaction Management**: Managing database transactions to ensure data integrity and consistency.

### Mnemonic

**"Gift Wrapper"**

Explanation:

**"Gift"**: Symbolizes the Decorator pattern, where objects are wrapped with additional functionalities like gifts, without changing their core nature.

**"Wrapper"**: Represents the decorators, which act as the wrapping paper, adding extra features to the objects they decorate.

Imagine a "Gift Wrapper" scenario, where the Decorator pattern plays the role of the gifter. The gifter wraps different objects (gifts) with beautiful wrappers (decorators) to enhance their appearance and functionalities. Each gift can have its unique set of decorative elements, but they all share the joy of being part of the Gift Wrapper pattern. The gifter can keep adding more decorative layers to the gifts without altering their original form, making the process of gifting exciting and customizable.