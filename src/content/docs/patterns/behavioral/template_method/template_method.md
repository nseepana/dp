---
title: template_method
description: ""
---
## Template Method

The `Template Method pattern` is a behavioral design pattern that defines the skeleton or outline of an algorithm in a base class, while allowing subclasses to provide their own implementation for certain steps of the algorithm. It promotes code reuse and provides a way to enforce a common structure for a family of related classes.

In JavaScript, the Template Method pattern is often used when you have a process or algorithm that can be broken down into several steps, but the overall structure of the process remains the same. The abstract base class (or the template class) provides a template method that defines the sequence of steps, and it may also provide default implementations for some of the steps. Subclasses then override or provide specific implementations for individual steps, tailoring the algorithm to their specific needs.

The key components of the Template Method pattern in JavaScript are:

1. **Abstract Base Class**: This is the class that defines the template method, which contains the overall algorithm or process flow. It may also provide default implementations for some of the steps, either as concrete methods or by throwing an error to enforce implementation by subclasses.

2. **Concrete Classes**: These are the subclasses that inherit from the abstract base class. They override or implement the specific steps of the algorithm as required, providing their own implementations.

3. **Template Method**: This is the method defined in the abstract base class that represents the overall algorithm or process flow. It typically calls several other methods, including abstract (or hook) methods, to perform specific steps of the algorithm. The template method is typically marked as final or non-overridable to enforce the overall structure.

4. **Hook Methods (Optional)**: These are additional methods defined in the abstract base class that subclasses may choose to override. Hook methods provide extension points within the template method, allowing subclasses to customize or contribute to the algorithm at specific points.

By using the Template Method pattern, you can achieve a balance between providing a common structure for related classes while allowing flexibility in implementing specific steps of the algorithm. This promotes code reuse, reduces duplication, and allows for easy maintenance and evolution of the codebase.

**Example** of how the Template Method pattern can be implemented in JavaScript:

```javascript
// Abstract class: DataProcessor
class DataProcessor {
  process(data) {
    this.readData(data);
    this.transformData();
    this.displayData();
  }

  readData(data) {
    console.log("Reading data...");
    // Common implementation for reading data
  }

  transformData() {
    throw new Error("transformData() must be implemented in the subclass");
  }

  displayData() {
    console.log("Displaying data...");
    // Common implementation for displaying data
  }
}

// Concrete class: JSONDataProcessor
class JSONDataProcessor extends DataProcessor {
  transformData() {
    console.log("Transforming data to JSON format...");
    // Specific implementation for transforming data to JSON
  }
}

// Concrete class: CSVDataProcessor
class CSVDataProcessor extends DataProcessor {
  transformData() {
    console.log("Transforming data to CSV format...");
    // Specific implementation for transforming data to CSV
  }
}

// Usage
const jsonData = '{"name": "John", "age": 30, "city": "New York"}';
const csvData = "John,30,New York";

const jsonProcessor = new JSONDataProcessor();
jsonProcessor.process(jsonData);
/*
Output:
Reading data...
Transforming data to JSON format...
Displaying data...
*/

const csvProcessor = new CSVDataProcessor();
csvProcessor.process(csvData);
/*
Output:
Reading data...
Transforming data to CSV format...
Displaying data...
*/
```

In this example, we have an abstract class `DataProcessor` that defines a template method `process()`. The `process()` method provides a skeletal structure for processing data. It calls three separate methods: `readData()`, `transformData()`, and `displayData()`. The `readData()` and `displayData()` methods have a common implementation defined in the abstract class, while `transformData()` is left as an abstract method to be implemented by the concrete subclasses.

We have two concrete classes: `JSONDataProcessor` and `CSVDataProcessor`. Each concrete class extends the `DataProcessor` abstract class and provides its own implementation for the `transformData()` method.

In the usage section, we create instances of the concrete classes (`jsonProcessor` and `csvProcessor`) and call the `process()` method, which internally invokes the template method defined in the abstract class. The abstract class's implementation of `readData()` and `displayData()` is executed, while the specific implementation of `transformData()` from the corresponding concrete class is called.

When you run the code, you will see the respective console output demonstrating the execution of the template method and the specific implementations in the concrete classes.

The Template Method pattern allows you to define the overall algorithm or process flow in an abstract class, while leaving specific steps to be implemented by subclasses. This promotes code reuse and allows for customization of individual steps while maintaining a consistent overall structure.
