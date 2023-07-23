---
title: Observer
description: Observer pattern used to notify multiple objects about any events that happen to the object they’re observing.
---
### Purpose

The purpose of the Observer pattern is to establish a one-to-many dependency between objects, ensuring that when one object changes its state, all its dependents (observers) are automatically notified and updated accordingly. This pattern promotes loose coupling between objects, allowing them to interact without knowing each other's specific details.

### Context

In software development, there are often situations where multiple objects need to be notified of changes in the state of another object. Traditionally, developers might use direct callbacks or polling mechanisms to achieve this, but these approaches can lead to tight coupling and maintainability issues. The Observer pattern addresses these concerns by providing a more flexible and scalable solution for managing relationships between objects.

### Participants

1. **Subject:** The Subject is the core component that holds the state and manages the list of observers. It provides methods to attach, detach, and notify observers when its state changes.

2. **Observer:** The Observer is the interface that defines the contract for all the objects that wish to receive notifications from the Subject. It usually contains an update method that is called by the Subject to notify changes.

3. **ConcreteSubject:** The ConcreteSubject is a specific implementation of the Subject interface. It maintains the state and sends notifications to its registered observers when the state changes.

4. **ConcreteObserver:** The ConcreteObserver is a specific implementation of the Observer interface. It registers with the Subject to receive notifications and implements the update method to handle the state change.

### Flow


1. The ConcreteSubject maintains its state and a list of ConcreteObservers that are interested in receiving updates. Initially, the list of observers is empty.

2. Various ConcreteObservers register themselves with the ConcreteSubject by calling its attach method, providing their references or relevant information.

3. When the state of the ConcreteSubject changes, it calls the notify method, which iterates through the list of registered ConcreteObservers and invokes their update methods.

4. Each ConcreteObserver that receives the notification updates its state or performs any necessary actions based on the information received from the ConcreteSubject.

5. If any ConcreteObserver is no longer interested in receiving updates from the ConcreteSubject, it can call the detach method of the ConcreteSubject to unregister itself.

6. The process continues, with the ConcreteSubject notifying all registered ConcreteObservers whenever its state changes, and each ConcreteObserver reacting accordingly.

By using the Observer pattern, you can decouple the components in your software system effectively, making it easier to maintain and extend without introducing tight dependencies between objects. This promotes a more flexible and scalable architecture, allowing for better code organization and a more intuitive design.

### Real World Scenarios

1. **Event Handling**: Notifying multiple UI components of changes in a user interface element's state (e.g., button click, data updates).

2. **Messaging Systems**: Broadcasting messages to multiple subscribers in a distributed system (e.g., pub-sub systems).

3. **GUI Components**: Updating various widgets or controls when the underlying data model changes.

4. **Notifications**: Sending notifications to multiple listeners when specific events occur (e.g., email notifications, system events).

5. **Stock Market Updates**: Notifying investors and traders about changes in stock prices or market conditions.

6. **Traffic Monitoring**: Updating traffic monitoring systems with real-time data from multiple sensors or cameras.

7. **Game Development**: Informing game entities about changes in game events or states.

8. **File System Observers**: Notifying multiple modules when files are created, modified, or deleted in a file system.

9. **Social Media Feeds**: Updating users' feeds with new posts or content from their friends and followers.

10. **Sensor Networks**: Propagating sensor data to various applications in IoT systems.

11. **Database Triggers**: Triggering actions in response to changes in the database (e.g., data replication).

12. **System Logs**: Notifying multiple loggers when specific events or errors occur in the system.

13. **Weather Updates**: Distributing weather information to multiple subscribers or applications.

14. **Chat Applications**: Broadcasting messages to all participants in a chat room.

15. **Performance Monitoring**: Updating monitoring tools with real-time performance data from various system components.

### Mnemonic

**"Notifier Celebration"**

Explanation:

**"Notifier"**: Represents the Observer pattern, which acts as the host (Subject) of the celebration, notifying various participants (Observers) whenever there is a change in its state.

**"Celebration"**: Denotes the joyous gathering of ConcreteObservers, invited by the Notifier, to react to the changes and celebrate the benefits of loose coupling and flexibility offered by the Observer pattern. Each observer brings its unique functionality to the party, but they all share the joy of being part of the Notifier's notifications. The celebration encourages developers to add new observers without modifying the Notifier, making it a lively and dynamic event in the software development realm.

