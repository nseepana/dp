---
title: Proxy
description: ""
---

## Purpose

The Proxy pattern provides a surrogate or placeholder for another object to control access to it. It adds an additional layer of indirection, allowing for additional behaviors or restrictions to be applied without modifying the original object.

## Context

The Proxy pattern is applicable in scenarios where you want to add a level of control, protection, or functionality to an existing object without modifying its core implementation. It can be used for various purposes such as lazy initialization, access control, caching, logging, or remote communication.

## Participants

- **Subject**: This is the interface or abstract class that defines the common methods or operations that the Proxy and RealSubject (the real object) both implement. It allows the Proxy to act as a drop-in replacement for the RealSubject.
- **Proxy**: The Proxy class acts as a surrogate for the RealSubject, implementing the same interface as the Subject. It maintains a reference to the RealSubject and controls access to it. The Proxy can add additional behaviors or restrictions before delegating the request to the RealSubject.
- **RealSubject**: The RealSubject is the actual object that the Proxy represents. It performs the core operations or functionality that the Proxy may enhance or control access to.

In the Proxy pattern, the Proxy class acts as a middleman between the client and the RealSubject, intercepting requests and adding additional functionality or restrictions if needed. It delegates the requests to the RealSubject but can perform actions before or after the delegation.

The Proxy pattern helps to achieve various goals such as deferred loading, access control, performance optimization, or adding additional functionality to an object without modifying its core implementation.


