---
title: Singleton
description: Singleton used to ensure that there is a single instance of a class
---

## Purpose

The purpose of the Singleton pattern is to ensure that there is a single instance of a class and to provide a global point of access to that instance. It is useful when multiple components or modules need to access the same instance of an object without creating multiple copies.

## Context

The Singleton pattern is used when there should be only one instance of a particular class throughout the application. It is commonly employed in scenarios such as managing database connections, logging mechanisms, caching objects, and configurations.

## Participants

- **Singleton**: This is the class that implements the Singleton pattern. It typically provides a static method to access the singleton instance and ensures that only one instance is created.
