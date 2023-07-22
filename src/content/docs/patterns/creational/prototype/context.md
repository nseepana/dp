---
title: Prototype
description: Prototype used to clone existing objects
---

## Purpose

The purpose of the Prototype pattern is to create new objects by cloning existing objects, thereby avoiding the overhead of creating objects from scratch. It allows you to define initial properties and behavior in a prototype object and then create new instances based on that prototype, making it easier to create similar objects with slight variations.

## Context

The Prototype pattern is used in situations where creating new objects from scratch is costly or complex, and you want to create new instances based on existing objects. It is particularly useful when you have a hierarchy of objects, and you want to create instances that inherit properties and behavior from a prototype object.

## Participants

- **Prototype**: This is the object that serves as a prototype for creating new objects. It defines the interface for cloning itself.
- **Client**: The client is responsible for creating new objects by cloning the prototype and modifying them as necessary.
