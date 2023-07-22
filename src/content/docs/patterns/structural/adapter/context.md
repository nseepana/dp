---
title: Adapter
description: ""
---

## Purpose

The Adapter pattern is used to convert the interface of one class into another interface that clients expect. It allows incompatible classes to work together by wrapping the functionality of one class with a compatible interface.

## Context

The Adapter pattern is applicable when you have existing classes with incompatible interfaces and need to make them work together without modifying their original code. It is commonly used when integrating existing systems or libraries that have different interfaces.

## Participants

- **Target**: This represents the desired interface that the client code expects to work with. It defines the methods and properties that the client will use.
- **Adaptee**: This is the existing class or component that needs to be adapted. It has an incompatible interface that needs to be converted.
- **Adapter**: The Adapter class acts as a bridge between the Target and the Adaptee. It implements the Target interface and internally uses an instance of the Adaptee to fulfill the requested functionality. It translates the requests from the Target into appropriate calls to the Adaptee.

In the Adapter pattern, the Adapter class wraps the Adaptee and provides a translation layer between the Target interface and the Adaptee interface. This allows clients to interact with the Adapter using the Target interface, which is compatible with their expectations, while the Adapter internally calls the corresponding methods or properties of the Adaptee.

The Adapter pattern enables the integration and interoperability of different classes or systems by adapting their interfaces, making it possible for them to work together seamlessly.

