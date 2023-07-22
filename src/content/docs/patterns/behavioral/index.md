---
title: Behavioral Patterns
description: focus on the interaction and communication between objects
---

Behavioral patterns `focus on the objects interaction, communication and encapsulation`

Behavioral patterns help in achieving loose coupling and flexibility in the design, allowing for easier maintenance and extensibility of the software.


### Chain of Responsibility

This pattern establishes a chain of objects, where each object has the capability to handle a specific type of request. The request is passed along the chain until an object handles it or it reaches the end of the chain.

- Use case: `Express` in Node.js
- Use case: `Koa` in Node.js
- Use case: `Hapi` in Node.js
- Use case: `Fastify` in Node.js

InShort: `establish chain of objects where each object has capability to handle specific type of request`


<!-- Code: [chain_of_responsibility.js](chain_of_responsibility/chain_of_responsibility.js), [chain_of_responsibility.swift](chain_of_responsibility/chain_of_responsibility.swift) -->

### Command

The command pattern encapsulates a request as an object, allowing you to parameterize clients with different requests, queue or log requests, and support undoable operations.

- Use case: `Redux` in React
- Use case: `Vuex` in Vue
- Use case: `NgRx` in Angular

InShort: `encapsulate request as object`


<!-- Code: [command.js](command/command.js), [command.swift](command/command.swift) -->

### Iterator

The iterator pattern provides a way to sequentially access elements of a collection without exposing the underlying structure. It allows clients to access the elements of an aggregate object sequentially without knowing how the elements are stored.

- Use case: `for...of` in JavaScript
- Use case: `for...in` in JavaScript
- Use case: `for` in JavaScript

InShort: `sequentially access elements of collection without exposing underlying structure`

<!-- Details: [Purpose, Context and Participants](iterator) -->

<!-- Code: [Iterator.js](iterator/iterator.js), [Iterator.swift](iterator/iterator.swift) -->

### Memento

The memento pattern allows an object to capture its internal state and save it externally so that the object can be restored to this state later.

- Use case: `localStorage` in JavaScript
- Use case: `sessionStorage` in JavaScript
- Use case: `IndexedDB` in JavaScript

InShort: `save and restore state`

<!-- Details: [Purpose, Context and Participants](memento) -->

<!-- Code: [memento.js](memento/memento.js), [memento.swift](memento/memento.swift) -->

### Mediator

The mediator pattern defines an object that encapsulates how a set of objects interact. It promotes loose coupling by keeping objects from referring to each other explicitly, and it allows their interaction to vary independently.

- Use case: `Redux` in React
- Use case: `Vuex` in Vue
- Use case: `NgRx` in Angular

InShort: `encapsulate how set of objects interact`

<!-- Details: [Purpose, Context and Participants](mediator) -->

### Observer

This pattern establishes a one-to-many dependency between objects, so that when one object changes state, all its dependents (observers) are notified and updated automatically.

- Use case: `EventEmitter` in Node.js
- Use case: `Observable` in Angular
- Use case: `Observer` in React

InShort: `one-to-many dependency between objects`

<!-- Details: [Purpose, Context and Participants](observer) -->

<!-- Code: [Observer.js](observer/observer.js), [Observer.swift](observer/observer.swift) -->

### State

The state pattern allows an object to alter its behavior when its internal state changes. It encapsulates each state as an object and delegates the behavior based on the current state.

- Use case: `useState` in React
- Use case: `useReducer` in React
- Use case: `useContext` in React

InShort: `alter behavior when internal state changes`

<!-- Details: [Purpose, Context and Participants](state) -->

<!-- Code: [state.js](state/state.js), [state.swift](state/state.swift) -->

### Strategy

The strategy pattern defines a family of interchangeable algorithms and encapsulates each one separately. It allows the algorithm to be selected at runtime without the client knowing the implementation details.

- Use case: `sort` in JavaScript
- Use case: `filter` in JavaScript
- Use case: `map` in JavaScript
- Use case: `reduce` in JavaScript

InShort: `define family of interchangeable algorithms and encapsulate each one separately`

<!-- Details: [Purpose, Context and Participants](strategy) -->

<!-- Code: [strategy.js](strategy/strategy.js), [strategy.swift](strategy/strategy.swift) -->

### Template Method

The template method pattern defines the skeleton of an algorithm in a base class, allowing subclasses to override certain steps of the algorithm without changing its structure.

- Use case: `render` in React
- Use case: `render` in Vue
- Use case: `render` in Angular

InShort: `define skeleton of algorithm in base class and allow subclasses to override certain steps of the algorithm without changing its structure`

<!-- Details: [Purpose, Context and Participants](template_method) -->

<!-- Code: [template_method.js](template_method/template_method.js), [template_method.swift](template_method/template_method.swift) -->

### Visitor

The visitor pattern separates an algorithm from the objects it operates on. It allows adding new operations to existing object structures without modifying those structures.

- Use case: `ReactDOM.render` in React
- Use case: `ReactDOM.hydrate` in React
- Use case: `ReactDOM.createPortal` in React

InShort: `separate algorithm from objects it operates on`

<!-- Details: [Purpose, Context and Participants](visitor) -->

<!-- Code: [visitor.js](visitor/visitor.js), [visitor.swift](visitor/visitor.swift) -->

These behavioral patterns provide solutions for common design challenges related to object interaction, communication, and encapsulation of behavior. Each pattern addresses a specific aspect of behavior management, and understanding these patterns can help in designing more flexible and maintainable software systems.

___

**Mnemonic**: 

**Chain of Responsibility (C)** - Visualize a chain of people where each person has the ability to handle a specific request. The chain of responsibility pattern represents the delegation of requests along a chain of objects.

**Command (C)** - Imagine a person giving commands to a robot to perform different tasks. The command pattern represents the encapsulation of a request as an object.

**Iterator (I)** - Visualize a person using a remote control to sequentially access different channels on a television. The iterator pattern represents the sequential access of elements in a collection.

**Memento (M)** - Visualize a person saving a file on a computer and restoring it later. The memento pattern represents the ability to save and restore an object’s state.

**Mediator (M)** - Picture a person using a mobile phone to send a text message to another person. The mediator pattern represents the ability to define a common communication channel between a group of objects.

**Observer (O)** - Imagine a group of people observing a painting in an art gallery. The observer pattern represents the one-to-many relationship between the painting and the people observing it.

**State (S)** - Imagine a person using a remote control to change the state of a television from on to off. The state pattern represents the ability to alter the behavior of an object when its internal state changes.

**Strategy (S)** - Picture a person using different strategies to solve a puzzle. The strategy pattern represents the ability to select an algorithm at runtime.

**Template Method (T)** - Picture a person using a template to draw a shape. The template method pattern represents the ability to define the skeleton of an algorithm in a base class and allow subclasses to override certain steps of the algorithm without changing its structure.

**Visitor (V)** - Imagine a person visiting different places in a city. The visitor pattern represents the ability to separate an algorithm from the object it operates on.

___
_CCIMMOSSTV_
___

## Glossary

- **Aggregate**:
    A collection of objects.
- **Receiver**:
    The object that performs the actual action when the command is executed.
- **Invoker**:
    The object that sends the command to the receiver.
- **Encapsulate**:
    to enclose (something) in or as if in a capsule
- **Algorithm**:
    a step-by-step procedure for solving a problem
- **Skeleton**:
    a set of beliefs, ideas, or principles upon which a religion, philosophy, or similar movement is based
- **Loose coupling**:
    Loose coupling is a design goal that seeks to reduce the interdependencies between components of a system with the goal of reducing the risk that changes in one component will require changes in any other component.
- **Sequentially**:
    of, relating to, or arranged in a sequence

- **Purpose**: In the context of design patterns, the "purpose" refers to the specific problem or objective that a pattern aims to address or achieve.

- **Context**: In the context of design patterns, "context" refers to the specific situation, environment, or conditions in which a pattern is applied or used.
  
- **Participants**: In the context of design patterns, the "participants" refer to the different components or entities involved in a particular pattern. These participants are the building blocks that work together to implement the pattern and fulfill its purpose.

_____
