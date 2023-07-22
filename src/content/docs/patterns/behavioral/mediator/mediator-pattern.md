---
title: mediator-pattern
description: ""
---
## mediator pattern

The Mediator Pattern is a behavioral design pattern that promotes loose coupling between components by encapsulating their interaction within a mediator object. It enables communication between objects without them needing to have direct references to each other. Instead, they communicate through the mediator, which centralizes and controls the interaction.

The Mediator Pattern is useful in scenarios where a system contains multiple objects that need to communicate and coordinate with each other. It helps to reduce dependencies and simplifies the overall design by decoupling the objects involved.

Here's an example implementation of the Mediator Pattern in Swift:

```swift
// Mediator protocol
protocol Mediator {
    func sendMessage(message: String, sender: Colleague)
}

// Colleague protocol
// a 'Colleague' is an object that communicates with other objects through a mediator
protocol Colleague {
    var mediator: Mediator? { get set }
    func send(message: String)
    func receive(message: String)
}

// Concrete Mediator
class ChatRoomMediator: Mediator {
    private var colleagues: [Colleague] = []
    
    func addColleague(colleague: Colleague) {
        colleagues.append(colleague)
        colleague.mediator = self
    }
    
    func sendMessage(message: String, sender: Colleague) {
        for colleague in colleagues {
            if colleague !== sender {
                colleague.receive(message: message)
            }
        }
    }
}

// Concrete Colleague
class User: Colleague {
    var name: String
    var mediator: Mediator?
    
    init(name: String) {
        self.name = name
    }
    
    func send(message: String) {
        mediator?.sendMessage(message: message, sender: self)
    }
    
    func receive(message: String) {
        print("\(name) received: \(message)")
    }
}

// Usage example
let mediator = ChatRoomMediator()
let user1 = User(name: "Alice")
let user2 = User(name: "Bob")
mediator.addColleague(colleague: user1)
mediator.addColleague(colleague: user2)

user1.send(message: "Hello, Bob!")
user2.send(message: "Hi, Alice!")
```

In this example, the Mediator pattern is implemented using a `ChatRoomMediator` as the concrete mediator and `User` as the concrete colleague. The `Mediator` protocol defines a method `sendMessage(message:sender:)`, which the mediator uses to forward messages to the appropriate colleagues. The `Colleague` protocol defines methods for sending and receiving messages, as well as a `mediator` property for referencing the mediator object.

The `ChatRoomMediator` maintains a list of colleagues and implements the `sendMessage(message:sender:)` method to broadcast messages to all colleagues except the sender.

The `User` class represents individual users who can send and receive messages. When a user sends a message, it calls the `mediator`'s `sendMessage(message:sender:)` method, passing the message and the sender as arguments. The mediator then distributes the message to all other colleagues, and each colleague receives the message through the `receive(message:)` method.

By using the Mediator Pattern, the objects (`User` instances in this example) are decoupled from each other, and the communication logic is encapsulated within the mediator. This allows for a flexible and maintainable design, where adding new colleagues or modifying the interaction logic can be done without impacting the existing objects.

