---
title: strategy
description: ""
---

## Strategy

The `Strategy pattern` is a behavioral design pattern that allows you to define a family of interchangeable algorithms and encapsulate each algorithm within its own class. The Strategy pattern enables the algorithms to be selected at runtime based on specific requirements or conditions. It promotes flexibility, modularity, and maintainability by separating the algorithm implementation from the client that uses it.

Here's an example of implementing the Strategy pattern in JavaScript:

```javascript
// Context: Sorter
class Sorter {
  constructor(strategy) {
    this.strategy = strategy;
  }

  setStrategy(strategy) {
    this.strategy = strategy;
  }

  sort(data) {
    return this.strategy.sort(data);
  }
}

// Strategies
class BubbleSortStrategy {
  sort(data) {
    console.log("Sorting using Bubble Sort strategy");
    // Bubble sort implementation
    return data.sort((a, b) => a - b);
  }
}

class QuickSortStrategy {
  sort(data) {
    console.log("Sorting using Quick Sort strategy");
    // Quick sort implementation
    return data.sort((a, b) => a - b);
  }
}

// Usage
const data = [5, 2, 8, 1, 9];
const sorter = new Sorter(new BubbleSortStrategy());

console.log("Original data:", data);
console.log("Sorted data:", sorter.sort(data)); // Sorting using Bubble Sort strategy

sorter.setStrategy(new QuickSortStrategy());
console.log("Sorted data:", sorter.sort(data)); // Sorting using Quick Sort strategy
```

In this example, we have a `Sorter` class, which acts as the context or client. The `Sorter` class accepts a sorting strategy as a parameter during instantiation and encapsulates it within the class. It provides a `setStrategy()` method to dynamically change the sorting strategy at runtime.

The sorting strategies, such as `BubbleSortStrategy` and `QuickSortStrategy`, implement a common interface or base class (`sort()` method) defining the algorithm for sorting the data.

During usage, you create an instance of the `Sorter` class with an initial strategy (in this case, `BubbleSortStrategy`). You can then call the `sort()` method on the `Sorter` object to perform the sorting operation using the selected strategy. By setting a different strategy using the `setStrategy()` method, you can change the sorting algorithm dynamically.

When you run the code, you'll see that the sorting strategy is selected based on the currently set strategy, and the appropriate sorting algorithm is executed accordingly.

The Strategy pattern allows you to encapsulate and interchange different algorithms or strategies, providing flexibility and enabling the selection of algorithms at runtime. It promotes the separation of concerns and makes it easier to extend or add new strategies without modifying the existing code.