---
title: Command
description: ""
---
 Here are five examples of using the Command pattern in JavaScript for web-related scenarios:

Example 1: Handling Button Clicks
```javascript
class Button {
  constructor(label, command) {
    this.label = label;
    this.command = command;
  }

  onClick() {
    this.command.execute();
  }
}

class SaveCommand {
  execute() {
    console.log("Saving the data...");
    // Perform save operation
  }
}

// Usage
const saveButton = new Button("Save", new SaveCommand());
saveButton.onClick(); // Saving the data...
```

Example 2: Keyboard Shortcuts
```javascript
class KeyboardShortcut {
  constructor(key, command) {
    this.key = key;
    this.command = command;
  }

  onKeyPress(keyPressed) {
    if (keyPressed === this.key) {
      this.command.execute();
    }
  }
}

class OpenCommand {
  execute() {
    console.log("Opening a new document...");
    // Perform open operation
  }
}

// Usage
const openShortcut = new KeyboardShortcut("O", new OpenCommand());
openShortcut.onKeyPress("O"); // Opening a new document...
```

Example 3: Context Menu Actions
```javascript
class MenuItem {
  constructor(label, command) {
    this.label = label;
    this.command = command;
  }

  onClick() {
    this.command.execute();
  }
}

class CopyCommand {
  execute() {
    console.log("Copying the selected text...");
    // Perform copy operation
  }
}

// Usage
const copyMenuItem = new MenuItem("Copy", new CopyCommand());
copyMenuItem.onClick(); // Copying the selected text...
```

Example 4: Drawing Canvas
```javascript
class DrawingCanvas {
  constructor() {
    this.commands = [];
  }

  executeCommand(command) {
    this.commands.push(command);
    command.execute();
  }

  undo() {
    const lastCommand = this.commands.pop();
    if (lastCommand) {
      lastCommand.undo();
    }
  }
}

class DrawCommand {
  constructor(shape) {
    this.shape = shape;
  }

  execute() {
    console.log(`Drawing a ${this.shape} shape...`);
    // Perform drawing operation
  }

  undo() {
    console.log(`Undoing drawing of ${this.shape} shape...`);
    // Perform undo operation
  }
}

// Usage
const canvas = new DrawingCanvas();
const drawCommand = new DrawCommand("rectangle");
canvas.executeCommand(drawCommand); // Drawing a rectangle shape...
canvas.undo(); // Undoing drawing of rectangle shape...
```

Example 5: Web Form Validation
```javascript
class FormValidator {
  constructor(inputField, validationCommand) {
    this.inputField = inputField;
    this.validationCommand = validationCommand;
  }

  validate() {
    const value = this.inputField.value;
    this.validationCommand.execute(value);
  }
}

class EmailValidationCommand {
  execute(value) {
    console.log(`Validating email: ${value}`);
    // Perform email validation
  }
}

// Usage
const emailInput = document.getElementById("emailInput");
const emailValidationCommand = new EmailValidationCommand();
const emailValidator = new FormValidator(emailInput, emailValidationCommand);
emailValidator.validate(); // Validating email: [input value]
```

In these examples, the Command pattern is used to encapsulate actions and decouple the invoker (the object triggering the action) from the receiver (the object performing the action). Each command is represented by a separate class implementing the `execute()` method, which performs the corresponding action. The invoker object is responsible for executing the command when appropriate.

These examples demonstrate different use cases where the Command pattern can be applied in web development scenarios, such as handling