---
title: Flyweight
description: ""
---

## Purpose

The Flyweight pattern is used to minimize memory usage by sharing common data across multiple objects. It aims to reduce the memory footprint of an application by storing intrinsic (shared) state externally and sharing it among multiple objects, while keeping the extrinsic (unique) state separate for each object.

## Context

The Flyweight pattern is applicable in situations where an application needs to create a large number of objects with similar characteristics and a significant amount of shared data. It is particularly useful when the memory consumption of creating separate objects for each instance is high and can be optimized by sharing common data.

## Participants

- **Flyweight**: This is the interface or abstract class that defines the common methods and properties that the flyweight objects should implement.
- **Concrete Flyweight**: These are the concrete implementations of the Flyweight interface. They store the intrinsic (shared) state, which can be shared across multiple objects.
- **Flyweight Factory**: This is a factory or manager class responsible for creating and managing the flyweight objects. It ensures that the flyweight objects are shared and reused appropriately.
- **Client**: The client is responsible for using the flyweight objects. It can request and use flyweight objects from the flyweight factory, providing the necessary extrinsic (unique) state as needed.

In the Flyweight pattern, the flyweight objects store the common or shared state externally, minimizing memory consumption. The flyweight factory manages the creation and sharing of flyweight objects, ensuring that the objects are reused when possible. The client utilizes the flyweight objects, providing the unique state that differentiates each object.

By employing the Flyweight pattern, applications can reduce memory usage and improve performance when dealing with a large number of objects that share common characteristics.

