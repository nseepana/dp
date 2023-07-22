---
title: Builder
description: used to construct complex objects
---

## Purpose

The purpose of the Builder pattern is to provide a flexible and reusable solution for constructing complex objects. It allows the construction process to vary independently from the object's structure, and supports the creation of different representations using the same building steps.

## Context

The Builder pattern is useful when:
 
- The object to be created is complex, consisting of multiple parts or configurations.
- The construction process needs to allow different representations of the object.
- There is a need to avoid having a complex constructor with numerous parameters.
- The construction logic should be decoupled from the final object, enabling easy changes or extensions to the construction process.

## Participants

- **Builder**: An abstract interface that defines the steps to construct an object.
- **ConcreteBuilder**: Concrete implementations of the Builder interface that provide the necessary methods to construct the object. Each concrete builder is responsible for creating a specific representation of the object.
- **Product**: The complex object being constructed, typically composed of multiple parts.
- **Director**: Optional component that controls the construction process by interacting with the builder.

The Builder pattern allows the client code to specify the desired configuration and features of the object by invoking the builder's methods. Once all the desired parameters are set, the client can request the builder to create the final object.

