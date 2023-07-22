---
title: chain_of_responsibility
description: ""
---
# Chain of Responsibility

The "Chain of Responsibility" is a behavioral design pattern that allows an object to pass a request along a chain of potential handlers until one of them handles the request. 

In JavaScript/Swift, we can implement the Chain of Responsibility pattern using a combination of objects and function calls. Let's take a look at an example to understand how it works:

```javascript
// Handler interface
class Handler {
  constructor() {
    this.successor = null;
  }

  setSuccessor(successor) {
    this.successor = successor;
  }

  handleRequest(request) {
    // To be overridden by concrete handlers
  }
}

// Concrete handler 1
class ConcreteHandler1 extends Handler {
  handleRequest(request) {
    if (request === 'type1') {
      console.log('ConcreteHandler1 handles the request');
    } else if (this.successor) {
      this.successor.handleRequest(request);
    }
  }
}

// Concrete handler 2
class ConcreteHandler2 extends Handler {
  handleRequest(request) {
    if (request === 'type2') {
      console.log('ConcreteHandler2 handles the request');
    } else if (this.successor) {
      this.successor.handleRequest(request);
    }
  }
}

// Concrete handler 3
class ConcreteHandler3 extends Handler {
  handleRequest(request) {
    if (request === 'type3') {
      console.log('ConcreteHandler3 handles the request');
    } else if (this.successor) {
      this.successor.handleRequest(request);
    }
  }
}

// Usage
const handler1 = new ConcreteHandler1();
const handler2 = new ConcreteHandler2();
const handler3 = new ConcreteHandler3();

handler1.setSuccessor(handler2);
handler2.setSuccessor(handler3);

handler1.handleRequest('type2');  // ConcreteHandler2 handles the request
handler1.handleRequest('type3');  // ConcreteHandler3 handles the request
handler1.handleRequest('type1');  // ConcreteHandler1 handles the request
handler1.handleRequest('type4');  // No handler can handle the request
```

In the example above, we have three concrete handlers (`ConcreteHandler1`, `ConcreteHandler2`, and `ConcreteHandler3`) that inherit from the `Handler` base class. Each handler checks if it can handle the request based on some condition. If it can handle the request, it performs the necessary action. Otherwise, it passes the request to the next handler in the chain by calling `this.successor.handleRequest(request)`.

To set up the chain, we create instances of the concrete handlers and use the `setSuccessor()` method to define the order of the chain. In the usage section, we demonstrate how the chain of responsibility works by calling `handleRequest()` on the first handler in the chain. The request is passed along the chain until a handler can handle it, or until it reaches the end of the chain with no suitable handler.

This way, the sender of the request doesn't need to know which object will handle the request. It only needs to pass the request to the first object in the chain, and the responsibility of handling the request is delegated through the chain until it's handled or not handled at all.

Note that in this example, the handlers are checking for specific request types (`'type1'`, `'type2'`, etc.) for simplicity. In a real-world scenario, the condition for handling a request could be more complex or based on different criteria.

```swift
// Handler protocol
protocol Handler {
  var successor: Handler? { get set }
  func handleRequest(request: String)
}

// Concrete handler 1

class ConcreteHandler1: Handler {
  var successor: Handler?

  func handleRequest(request: String) {
    if request == "type1" {
      print("ConcreteHandler1 handles the request")
    } else if let successor = successor {
      successor.handleRequest(request: request)
    }
  }
}

// Concrete handler 2

class ConcreteHandler2: Handler {
  var successor: Handler?

  func handleRequest(request: String) {
    if request == "type2" {
      print("ConcreteHandler2 handles the request")
    } else if let successor = successor {
      successor.handleRequest(request: request)
    }
  }
}

// Concrete handler 3

class ConcreteHandler3: Handler {
  var successor: Handler?

  func handleRequest(request: String) {
    if request == "type3" {
      print("ConcreteHandler3 handles the request")
    } else if let successor = successor {
      successor.handleRequest(request: request)
    }
  }
}


// Usage

let handler1 = ConcreteHandler1()

let handler2 = ConcreteHandler2()

let handler3 = ConcreteHandler3()

handler1.successor = handler2

handler2.successor = handler3

handler1.handleRequest(request: "type2")  // ConcreteHandler2 handles the request

handler1.handleRequest(request: "type3")  // ConcreteHandler3 handles the request

handler1.handleRequest(request: "type1")  // ConcreteHandler1 handles the request


```
