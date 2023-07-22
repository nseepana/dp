---
title: Creational Patterns
description: Creational Patterns are used to create objects
---

Provides solutions for object creation and instantiation, abstracting the process and promoting flexibility and reusability.

### Abstract Factory

The Abstract Factory pattern provides an interface for creating families of related or dependent objects, without specifying their concrete classes.

- Use case: Creating UI components for different operating systems (e.g., Windows, macOS)
- Use case: Generating different themes for a user interface (e.g., light theme, dark theme)

InShort: `creates families of related objects without specifying concrete classes`

<!-- Details: [Purpose, Context and Participants](abstract_factory) -->

<!-- Code: [Abstract Factory](abstract_factory/abstract_factory.js), [abstract_factory.swift](abstract_factory/abstract_factory.swift) -->

### Builder

The Builder pattern separates the construction of an object from its representation, allowing the same construction process to create different representations.

- Use case: Creating complex objects with many optional parameters
- Use case: Building HTML elements dynamically

InShort: `separates object construction from its representation`

<!-- Details: [Purpose, Context and Participants](builder) -->

<!-- Code: [Builder](builder/builder.js), [builder.swift](builder/builder.swift) -->

### Factory

The Factory pattern provides an interface for creating objects, allowing subclasses or derived classes to determine the exact type of objects to be created.

- Use case: Creating instances of different database connectors based on configuration
- Use case: Generating different types of UI components based on user input

InShort: `provides an interface for creating objects`

<!-- Details: [Purpose, Context and Participants](factory) -->

<!-- Code: [factory.js](factory/factory.js), [factory.swift](factory/factory.swift) -->

### Prototype

The Prototype pattern involves creating objects by cloning existing objects, providing a mechanism for creating new objects based on existing ones.

- Use case: Creating multiple instances of a complex object with predefined properties
- Use case: Implementing a copy functionality for objects

InShort: `creates objects by cloning existing objects`

<!-- Details: [Purpose, Context and Participants](prototype) -->

<!-- Code: [Prototype](prototype/prototype.js), [prototype.swift](prototype/prototype.swift) -->

### Singleton

The Singleton pattern ensures that only a single instance of a class is created and provides a global point of access to that instance.

- Use case: Managing a shared resource, such as a database connection or logger
- Use case: Creating a global configuration object

InShort: `ensures a single instance of a class`

<!-- Details: [Purpose, Context and Participants](singleton) -->

<!-- Code: [singleton.js](singleton/singleton.js), [singleton.swift](singleton/singleton.swift) -->



___

**Mnemonic**: 

**Abstract Factory (A)** - Picture a factory that produces different types of products, such as a car factory that manufactures cars, SUVs, and motorcycles. The abstract factory pattern allows the creation of families of related objects.

**Builder (B)** - Imagine a construction site with builders and construction workers building a house. The builder pattern represents the step-by-step process of constructing complex objects.

**Factory Method (F)** - Visualize an assembly line in a factory where different raw materials and components are transformed into a finished product. The factory method pattern represents the process of creating objects in a similar way.

**Prototype (P)** - Visualize a photocopy machine making copies of a document. The prototype pattern allows the creation of new objects by cloning or copying existing ones.

**Singleton (S)** - Imagine a crown worn by a king. Just like a crown represents the uniqueness and singularity of a king, the singleton pattern ensures that only one instance of a class can exist.

___
_ABFPS_
___

