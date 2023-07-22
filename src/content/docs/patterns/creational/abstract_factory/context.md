---
title: Abstract Factory
description: used to create families of related objects
---

## Purpose

The purpose of the Abstract Factory pattern is to provide a way to create families of related objects without exposing the concrete classes to the client. It allows the client to work with different families of objects through a common interface, promoting flexibility, extensibility, and interchangeability.

## Context

The Abstract Factory pattern is useful in situations where there are multiple families of related objects that need to be created. It is particularly beneficial when the client code should be decoupled from the specific classes of objects being created, and there is a need to ensure that the created objects are compatible within their respective families.

## Participants

- **AbstractFactory**: This is the abstract factory interface that declares the methods for creating the different types of objects within a family.

- **ConcreteFactory**: Concrete implementations of the abstract factory interface. Each concrete factory is responsible for creating the specific objects within a family.

- **AbstractProduct**: The abstract base class or interface that declares the common methods for the products created by the abstract factory.

- **ConcreteProduct**: Concrete implementations of the abstract product. Each concrete product is created by a specific concrete factory and belongs to a particular family of objects.

- **Client**: The client code that uses the abstract factory to create the objects within a family. The client should only work with the abstract factory and abstract product interfaces to ensure that the code is decoupled from the specific concrete classes.
