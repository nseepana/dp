---
title: Factory Method
description: used to create objects
---

## Purpose

The purpose of the Factory Method pattern is to provide a way to create objects while decoupling the client code from the specific classes of objects being created. It allows for flexibility and extensibility by allowing subclasses to decide which concrete class to instantiate.

## Context

The Factory Method pattern is useful in situations where there is a family of related objects, but the specific class to instantiate is determined at runtime or based on certain conditions. It promotes flexibility, modularity, and code reuse by allowing new types of products to be added without modifying the existing client code.

## Participants

- **Creator**: An abstract class or interface that declares the factory method for creating objects. The creator may also provide default implementations for common operations that work with the products.
- **Concrete Creator**: Concrete implementations of the creator class that override the factory method to create specific concrete product instances.
- **Product**: The abstract class or interface that defines the interface of the objects created by the factory method.
- **Concrete Product**: Concrete implementations of the product interface created by the concrete creator.

The Factory Method pattern allows the client code to work with the abstract creator and product interfaces. The actual instantiation of the product objects is deferred to the concrete creator, which determines the specific class of the product to create.
