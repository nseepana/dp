---
title: Singleton
description: Singleton used to ensure that there is a single instance of a class
---


Singleton is a creational design pattern that lets you ensure that a class has only one instance, while providing a global access point to this instance.

**InShort**: Singleton pattern is used to ensure that a class has only one instance and provide a global access point to this instance.

**UseCase**: uses in the following scenarios:

- The Singleton pattern is useful when you need stricter control over global variables.

## Context


- You need to use the same instance of a class across an entire application, and you want to have a global access point to that instance.

- The Singleton pattern is often used in conjunction with the Factory Method pattern. In this case, the factory method returns the same cached object.

- The Singleton pattern is the most straightforward approach to make something global. However, it’s considered an anti-pattern by many developers because it introduces a global state into an application. In turn, this reduces the testability of the code.

## Purpose

- Ensure that a class has just a single instance. Why would anyone want to control how many instances a class has? The most common reason for this is to control access to some shared resource—for example, a database or a file.

- Provide a global access point to that instance. Remember those global variables that you used to store some essential objects? While they’re very handy, they’re also very unsafe since any code can potentially overwrite the contents of those variables and crash the app.

## Participants


- **Singleton**: defines getInstance() which returns the unique instance.

## Implementation

### JavaScript

```javascript
function Singleton() {
  if (Singleton.instance) {
    return Singleton.instance;
  }

  Singleton.instance = this;
}

const singleton1 = new Singleton();
const singleton2 = new Singleton();

console.log(singleton1 === singleton2); // true

```

### swift

```swift

class Singleton {
    static let shared = Singleton()
    private init() {}
}

let singleton1 = Singleton.shared
let singleton2 = Singleton.shared

print(singleton1 === singleton2) // true

```



