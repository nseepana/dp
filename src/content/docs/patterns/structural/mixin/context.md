---
title: Mixin
description: ""
---

## Purpose

Mixin is a structural design pattern that allows objects to inherit behaviors from multiple sources. It’s a pattern that allows you to mix functionalities to create a new one.

## Context

The Mixin pattern is useful when you need to provide a lot of optional features for a class. The pattern allows you to create a mixin class that contains all the optional features and then apply it to the main class. This way, you can easily add or remove features by simply adding or removing the mixin class.



## Participants

- **Mixin**: This is the mixin class that contains the optional features that can be added to the main class.
- **Main Class**: This is the main class that will inherit the optional features from the mixin class.
- **Client**: The client is responsible for using the main class.


