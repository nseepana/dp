---
title: template_method_context
description: ""
---
# Template Method Pattern

**Purpose:** Defines the skeleton of an algorithm in a base class, allowing subclasses to override certain steps while keeping the overall structure intact.

**Context:** When multiple classes share a similar algorithm but have varying implementations for certain steps, and it is desired to avoid code duplication and enforce consistency.

**Participants:**
** AbstractClass that defines the overall algorithm and template method, ConcreteClasses that provide specific implementations for the variant steps, and HookMethods that provide optional overridden steps.
