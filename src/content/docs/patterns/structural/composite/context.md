---
title: Composite
description: ""
---

## Purpose

The Composite pattern is used to treat a group of objects uniformly as a single object. It allows clients to work with individual objects and groups of objects in a consistent manner by representing them as a tree-like structure.

## Context

The Composite pattern is applicable when there is a need to represent part-whole hierarchies, where individual objects and groups of objects are treated identically. It is particularly useful when the client code needs to perform operations on objects at different levels of abstraction without distinguishing between them.

## Participants

- **Component**: The Component defines the common interface for both individual objects and composite objects in the hierarchy. It declares the methods for accessing and manipulating the components.
- **Leaf**: The Leaf represents the individual objects in the hierarchy that do not have any child components. It implements the operations defined by the Component interface.
- **Composite**: The Composite represents the composite objects in the hierarchy that can have child components. It implements the operations defined by the Component interface and may also provide additional methods for managing child components.
- **Client**: The client refers to the code that interacts with the Component objects. It can work with individual Leaf objects or Composite objects uniformly through the Component interface.

In the Composite pattern, the Component interface defines the common methods that are shared by both Leaf and Composite objects. The Leaf objects represent the individual objects, while the Composite objects represent the groups of objects. The Composite objects can contain one or more child components, including both Leaf and other Composite objects.

By treating both individual objects and groups of objects uniformly through the Component interface, the client can work with the objects in a consistent manner, regardless of their specific type within the hierarchy. This enables the client to perform operations on individual objects or recursively on composite objects without the need for explicit differentiation.

Overall, the Composite pattern allows for the creation of complex structures while maintaining a simple and consistent interface for client code.

