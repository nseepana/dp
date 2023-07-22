---
title: Memento
description: ""
---

## Purpose
The Memento Pattern is used to capture and store the internal state of an object without exposing its details to the external clients. It enables the object to be restored to a previous state or undo changes, while preserving encapsulation and information hiding.

## Context
The Memento Pattern is applicable in scenarios where there is a need to save and restore the state of an object, such as implementing undo/redo functionality or maintaining checkpoints in an application. It is useful when direct access to the internal state of an object is not desirable or when the object's state is complex and needs to be managed independently.

## Participants

- **Originator**: Represents the object whose state needs to be saved and restored. It creates a memento object to capture its state or can restore its state from a memento.
- **Memento**: Stores the internal state of the originator object. It typically provides methods to retrieve the state or to restore the state back to the originator.
- **Caretaker**: Responsible for managing and storing the mementos. It holds references to the mementos and can request the originator to save or restore its state using the mementos.

The Memento Pattern allows the originator object to create a memento object that captures its internal state. The memento can be stored by the caretaker, which can later request the originator to restore its state from a specific memento. The originator has control over what state is exposed and restored, preserving encapsulation and hiding implementation details.

This pattern enables the implementation of undo/redo functionality by keeping a stack of mementos in the caretaker. It also allows for the creation of checkpoints in an application, where the state can be saved and later restored. The mementos themselves can be designed to be immutable or mutable, depending on the requirements of the system.

The Memento Pattern helps in separating the state management and preservation logic from the object itself. It promotes information hiding and encapsulation by providing a controlled way to access and restore the internal state. It enhances the flexibility, maintainability, and extensibility of the codebase by enabling the object's state to be managed independently.

The Memento Pattern is commonly used in applications where the ability to save and restore object states is required, such as text editors, document management systems, and any application that needs to support undo/redo or checkpoints.