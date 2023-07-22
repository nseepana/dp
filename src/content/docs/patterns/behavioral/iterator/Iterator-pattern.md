---
title: Iterator-pattern
description: ""
---
The `Iterator Pattern` is a behavioral design pattern that provides a way to access the elements of an aggregate object sequentially without exposing its underlying representation. It decouples the traversal logic from the aggregate object, making it easier to iterate over collections or complex data structures.

In Swift, the `Iterator Pattern` is often used when working with arrays, sets, dictionaries, or custom data structures. Here's an example implementation of the `Iterator Pattern` in Swift:

```swift
// Define the Iterator protocol
protocol Iterator {
    associatedtype Element
    
    func hasNext() -> Bool
    func next() -> Element?
}

// Define the Aggregate protocol
protocol Aggregate {
    associatedtype IteratorType: Iterator where IteratorType.Element == Self
    
    func createIterator() -> IteratorType
}

// Implement the Concrete Iterator
// The ArrayIterator class is declared with a generic type T, which allows it to work with any type of elements.
class ArrayIterator<T>: Iterator {
    // The array property holds the elements to iterate over.
    private let array: [T]
    private var currentIndex = 0
    
    // The initializer takes an array of elements as a parameter.
    init(array: [T]) {
        self.array = array
    }
    
    func hasNext() -> Bool {
        return currentIndex < array.count
    }
    
    // The next method returns the current element and increments the index.

    func next() -> T? {
        guard hasNext() else { return nil };
        // defer used to increment the index after returning the current element
        defer { currentIndex += 1 }
        return array[currentIndex]
    }
}

// Implement the Concrete Aggregate

// The MyArray class implements the Aggregate protocol and defines the createIterator method, which returns an ArrayIterator instance.
class MyArray<T>: Aggregate {

    // The elements property holds the elements to iterate over.
    private var elements: [T] = []
    
    // The add method adds an element to the array.
    func add(element: T) {
        elements.append(element)
    }
    
    // The createIterator method returns an ArrayIterator instance.
    func createIterator() -> ArrayIterator<T> {
        return ArrayIterator(array: elements)
    }
}

// Usage example
let myArray = MyArray<Int>()
myArray.add(element: 1)
myArray.add(element: 2)
myArray.add(element: 3)

let iterator = myArray.createIterator()
while iterator.hasNext() {
    if let element = iterator.next() {
        print(element)
    }
}
```

In this example, the `Iterator` protocol defines the common methods for iterating over elements (`hasNext` and `next`).

The `Aggregate` protocol defines the method `createIterator`, which creates an iterator specific to the aggregate object. 

The `ArrayIterator` implements the iterator logic for an array, while `MyArray` implements the aggregate logic and returns an `ArrayIterator` in its `createIterator` method.

By using the `Iterator Pattern`, you can iterate over the elements of an array or any other aggregate object without exposing its internal structure, providing a clean and standardized way to traverse collections.