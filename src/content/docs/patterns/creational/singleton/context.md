---
title: Singleton
description: Singleton used to ensure that there is a single instance of a class
---

### Purpose

The purpose of the Singleton pattern is to ensure that a class has only one instance and to provide a way for other parts of the software to access that single instance globally. This is useful when we want to avoid creating multiple instances of the same object and instead use a single shared instance throughout the application.

### Context

We use the Singleton pattern when we need to guarantee that there is only one instance of a particular class in the entire software. It finds application in scenarios where multiple components or modules require access to the same instance of an object without creating duplicates. Common use cases include managing database connections, logging mechanisms, caching objects, and configurations.

### Participants

- **Singleton**: This is the class that implements the Singleton pattern. It provides a static method to access the single instance and ensures that only one instance is created, even if multiple requests are made.

### Flow

1. The software checks if an instance of the Singleton class exists.
2. If an instance exists, the Singleton class returns that existing instance.
3. If an instance does not exist, the Singleton class creates a new instance and stores it.
4. The Singleton class returns the single instance to the requesting components or modules.
5. Throughout the software's execution, whenever other parts need access to this particular instance, they will receive the same single instance, avoiding unnecessary duplication.


### Mnemonic

**"Singular Sanctuary"**

Explanation:

**"Singular"**: Represents the Singleton pattern, which ensures a solitary instance of a class, creating a sense of exclusivity and uniqueness, like a sanctuary for the class.
**"Sanctuary"**: Conveys the idea of a safe place where the single instance resides, protected and globally accessible to those who seek it.

Imagine a "Singular Sanctuary" where the Singleton pattern acts as the guardian, ensuring that only one instance of a class exists within the software. It provides a safe haven for the class, allowing different parts of the code to access the single instance without duplication. Developers can trust that the instance will remain undisturbed and protected, like a sacred sanctuary within the software architecture.