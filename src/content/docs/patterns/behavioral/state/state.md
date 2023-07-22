---
title: state
description: ""
---
## State

The `State pattern` is a behavioral design pattern that allows an object to alter its behavior when its internal state changes. It encapsulates state-specific behavior into separate classes and enables the object to delegate the behavior to the current state. This promotes loose coupling and simplifies adding new states or modifying existing ones.

In JavaScript, the State pattern can be implemented using the following key components:

1. **Context**:
 The context represents the object that has an internal state and whose behavior needs to change based on that state. It maintains a reference to the current state object and delegates the behavior to the state object.

2. **State**: The state represents an interface or a base class that defines the methods or operations that the context object can perform based on its state. It typically declares the methods that represent the behavior associated with each state.

3. **Concrete States**: The concrete state classes implement the state interface or inherit from the state base class. Each concrete state class provides its own implementation of the methods declared in the state interface. These methods define the behavior specific to that state.

Let's illustrate the State pattern with an example of an Order processing system:

```javascript
// Context: Order
class Order {
  constructor() {
    this.state = new OrderReceivedState();
  }

  setState(state) {
    this.state = state;
  }

  process() {
    this.state.process();
  }
}

// State: OrderState
// Abstract base class for states
class OrderState {
  process() {
    throw new Error("process() must be implemented in the subclass");
  }
}

// Concrete States: OrderReceivedState
class OrderReceivedState extends OrderState {
  process() {
    console.log("Processing the received order...");
    // Additional processing logic for received state
    // Transition to the next state
    const nextState = new OrderProcessingState();
    // Set the next state on the context object
    order.setState(nextState);
  }
}

// Concrete States: OrderProcessingState
class OrderProcessingState extends OrderState {
  process() {
    console.log("Processing the order...");
    // Additional processing logic for processing state
    // Transition to the next state
    const nextState = new OrderShippedState();
    // Set the next state on the context object
    order.setState(nextState);
  }
}

// Concrete States: OrderShippedState
class OrderShippedState extends OrderState {
  process() {
    console.log("Order has already been shipped.");
    // Additional processing logic for shipped state
    // No state transition as the order is already shipped
  }
}

// Usage
const order = new Order();

order.process(); // Processing the received order...
order.process(); // Processing the order...
order.process(); // Order has already been shipped.
```

In this example, we have an `Order` class that represents the context object. It maintains a reference to the current state and delegates the `process()` operation to the state object.

We define an abstract base class `OrderState` that represents the state interface. It declares the `process()` method that will be implemented by concrete state classes.

We have three concrete state classes: `OrderReceivedState`, `OrderProcessingState`, and `OrderShippedState`. Each state class extends the `OrderState` base class and provides its own implementation of the `process()` method, representing the behavior specific to that state.

During usage, we create an instance of the `Order` class, which is initially in the `OrderReceivedState`. We call the `process()` method on the `Order` object, which delegates the operation to the current state object. Depending on the current state, different processing logic is executed, and the state may transition to a different state by calling `setState()` on the `Order` object.

When you run the code, you'll see the