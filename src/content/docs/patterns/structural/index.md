---
title: Structural Patterns
description: "Organize objects and classes to form larger structures and provide relationships between them."
---

Organize objects and classes to form larger structures and provide relationships between them.

### Adapter

The Adapter pattern allows objects with incompatible interfaces to work together by providing a common interface that both objects can understand. It acts as a bridge between two incompatible interfaces, converting the interface of one object into another interface that clients expect.

- Use case: Converting data from one format to another (e.g., JSON to XML)
- Use case: Wrapping a third-party library with a simplified interface
- Use case: Making an old API compatible with a new version

InShort: `bridge between incompatible interfaces`

<!-- Details: [Purpose, Context and Participants](adaptor) -->

<!-- Code: [adaptor.js](adaptor/adaptor.js), [adaptor.swift](adaptor/adaptor.swift) -->

### Bridge

The Bridge pattern decouples an abstraction from its implementation, allowing the two to vary independently. It involves creating two separate class hierarchies: one for the abstraction and another for the implementation, and using a bridge object to connect them.

- Use case: Connecting different database engines to an application
- Use case: Implementing support for multiple rendering engines in a web framework
- Use case: Decoupling GUI components from underlying operating systems

InShort: `decouples abstraction from its implementation`

<!-- Details: [Purpose, Context and Participants](bridge) -->

<!-- Code: [bridge.js](bridge/bridge.js), [bridge.swift](bridge/bridge.swift) -->

### Composite

The Composite pattern allows you to treat a group of objects as a single object. It lets clients treat individual objects and compositions of objects uniformly by using a common interface. This pattern is useful when you need to represent a part-whole hierarchy.

- Use case: Representing a tree structure of elements
- Use case: Creating nested components in a user interface
- Use case: Building menus with submenus

InShort: `treat a group of objects as a single object`

<!-- Details: [Purpose, Context and Participants](composite) -->

<!-- Code: [composite.js](composite/composite.js), [composite.swift](composite/composite.swift) -->

### Decorator

The Decorator pattern allows you to add new functionality to an existing object dynamically. It involves creating a decorator class that wraps the original object and provides additional behaviors without modifying the underlying object.

- Use case: Adding logging functionality to a function or method
- Use case: Adding validation to a form input field
- Use case: Adding authentication to an API endpoint

InShort: `add new functionality to an existing object dynamically`

<!-- Details: [Purpose, Context and Participants](decorator) -->

<!-- Code: [decorator.js](decorator/decorator.js), [decorator.swift](decorator/decorator.swift) -->

### Facade

The Facade pattern provides a simplified interface to a complex system or set of classes. It encapsulates the complexity of the underlying subsystem and provides a single entry point for clients to access the system's features.

- Use case: Providing a high-level API for a library or framework
- Use case: Hiding the implementation details of a complex module
- Use case: Simplifying the interface of a set of related classes

InShort: `simplified interface to a complex system`

<!-- Details: [Purpose, Context and Participants](facade) -->

<!-- Code: [facade.js](facade/facade.js), [facade.swift](facade/facade.swift) -->

### Flyweight

The Flyweight pattern is used to minimize memory usage by sharing data across multiple similar objects. It involves separating the intrinsic (shared) state from the extrinsic (unique) state of an object, and sharing the intrinsic state among multiple instances.

- Use case: Caching frequently used data in a game engine
- Use case: Optimizing memory usage in a text editor for characters with the same font and size
- Use case: Storing shared data in a social media feed with multiple posts

InShort: `minimizes memory usage by sharing data among objects`

<!-- Details: [Purpose, Context and Participants](flyweight) -->

<!-- Code: [flyweight.js](flyweight/flyweight.js), [flyweight.swift](flyweight/flyweight.swift) -->

### Mixin

The Mixin pattern allows you to dynamically extend the functionality of an object by "mixing in" additional behavior from one or more mixins. Mixins are a way to achieve code reuse without inheritance, allowing objects to borrow methods and properties from multiple sources.

- Use case: Adding event handling capabilities to an object
- Use case: Mixing in utility functions to provide common functionalities
- Use case: Enhancing an object with serialization or cloning methods

InShort: `dynamically extend object functionality through mixins`

<!-- Details: [Purpose, Context and Participants](mixin) -->

<!-- Code: [mixin.js](mixin/mixin.js), [mixin.swift](mixin/mixin.swift) -->

### Proxy

The Proxy pattern provides a surrogate or placeholder object that controls access to another object, allowing you to add extra behavior before or after the target object's methods are invoked. It can be used to implement features such as lazy loading, caching, access control, and logging.

- Use case: Caching data from an API response
- Use case: Implementing access control for sensitive resources
- Use case: Logging method invocations for debugging purposes

InShort: `provides a surrogate object with additional behavior control`

<!-- Details: [Purpose, Context and Participants](proxy) -->

<!-- Code: [proxy.js](proxy/proxy.js), [proxy.swift](proxy/proxy.swift) -->

___

**Mnemonic**:

- **Adapter (A)** - Picture an adapter that allows you to plug in incompatible electronic devices, symbolizing how the adapter pattern bridges the gap between incompatible interfaces.

- **Bridge (B)** - Visualize a bridge connecting two separate land masses, representing how the bridge design pattern connects the abstraction and implementation parts of a system.

- **Composite (C)** - Visualize a group of musical notes coming together to form a harmonious chord, symbolizing how the composite pattern treats a collection of objects as a single object.
  
- **Decorator (D)** - Picture a beautifully decorated cake, where new layers and decorations are added to enhance its appearance and taste, reflecting how the decorator pattern adds new functionality to an existing object dynamically.

- **Flyweight (F)** - Imagine a group of people in a company using the same blueprint to build separate houses. This represents how the flyweight pattern minimizes memory usage by sharing data among objects.

- **Facade (F)** - Imagine a building with an elegant and simple front (facade) that hides the complex inner workings of the building.
  
- **Mixin (M)** - Picture a painter's palette with various colors mixed together, representing the dynamic extension of object functionality through mixins. Just like the painter includes different colors into their artwork, objects can include mixin functionality dynamically.

- **Proxy (P)** - Imagine a receptionist at the entrance of an office building, controlling access to visitors and acting as an intermediary between them and the employees inside.

___
_ABCDFFMP_
___

