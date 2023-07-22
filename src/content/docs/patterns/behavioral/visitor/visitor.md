---
title: visitor
description: ""
---
## Visitor Pattern

The `Visitor pattern` is a behavioral design pattern that allows adding new behaviors or operations to a set of objects without modifying their structure. It separates the algorithm or behavior from the objects on which it operates, promoting loose coupling and extensibility. In JavaScript, the Visitor pattern can be implemented using the following components:

1. Visitor: Defines the interface or base class for the visitor object, which declares a visit method for each type of object to be visited.

2. Concrete Visitors: Implement the visit method declared by the Visitor interface or base class. Each concrete visitor provides its own implementation of how it interacts with different types of objects.

3. Element: Defines the interface or base class for the elements in the object structure. It typically declares an accept method that accepts a visitor and allows the visitor to operate on the element.

4. Concrete Elements: Implement the accept method declared by the Element interface or base class. Each concrete element accepts a visitor and invokes the corresponding visit method on the visitor.

Let's illustrate the Visitor pattern with an example:

```javascript
// Visitor
class Visitor {
  visitElementA(elementA) {
    // Visit Element A and perform some operation
    console.log("Visitor is visiting Element A.");
  }

  visitElementB(elementB) {
    // Visit Element B and perform some operation
    console.log("Visitor is visiting Element B.");
  }
}

// Element
class Element {
  accept(visitor) {
    throw new Error("accept() must be implemented in the subclass");
  }
}

// Concrete Element: ElementA
class ElementA extends Element {
  accept(visitor) {
    visitor.visitElementA(this);
  }
}

// Concrete Element: ElementB
class ElementB extends Element {
  accept(visitor) {
    visitor.visitElementB(this);
  }
}

// Usage
const elementA = new ElementA();
const elementB = new ElementB();

const visitor = new Visitor();

elementA.accept(visitor); // Visitor is visiting Element A.
elementB.accept(visitor); // Visitor is visiting Element B.
```

In this example, we have a `Visitor` class that defines the interface for the visitor object. It declares the `visitElementA` and `visitElementB` methods to handle different types of elements.

We have an `Element` class that defines the interface for the elements in the object structure. It declares the `accept` method, which accepts a visitor and allows the visitor to operate on the element.

We have two concrete elements: `ElementA` and `ElementB`. Each concrete element implements the `accept` method and invokes the corresponding visit method on the visitor.

During usage, we create instances of `ElementA` and `ElementB`. We also create a `Visitor` object. We then call the `accept` method on each element, passing the visitor as an argument. This allows the visitor to visit and perform the appropriate operation on each element.

When you run the code, you'll see the console output indicating that the visitor is visiting each element according to its type.

`The Visitor pattern is useful when you have a set of objects with different types, and you want to perform operations on those objects without modifying their structure. It enables you to separate the logic or algorithm from the objects and add new behaviors by creating new visitor classes.`


Five **examples** of how the `Visitor pattern` can be applied in web development scenarios:

1. Analytics Tracking:

```javascript
// Visitor: AnalyticsVisitor
class AnalyticsVisitor {
  visitHomePage(homePage) {
    // Perform analytics tracking for the home page
    console.log("Tracking analytics for home page.");
  }

  visitAboutPage(aboutPage) {
    // Perform analytics tracking for the about page
    console.log("Tracking analytics for about page.");
  }

  visitContactPage(contactPage) {
    // Perform analytics tracking for the contact page
    console.log("Tracking analytics for contact page.");
  }
}

// Element: Page
class Page {
  accept(visitor) {
    throw new Error("accept() must be implemented in the subclass");
  }
}

// Concrete Elements: HomePage
class HomePage extends Page {
  accept(visitor) {
    visitor.visitHomePage(this);
  }
}

// Concrete Elements: AboutPage
class AboutPage extends Page {
  accept(visitor) {
    visitor.visitAboutPage(this);
  }
}

// Concrete Elements: ContactPage
class ContactPage extends Page {
  accept(visitor) {
    visitor.visitContactPage(this);
  }
}

// Usage
const homePage = new HomePage();
const aboutPage = new AboutPage();
const contactPage = new ContactPage();

const analyticsVisitor = new AnalyticsVisitor();

homePage.accept(analyticsVisitor); // Tracking analytics for home page.
aboutPage.accept(analyticsVisitor); // Tracking analytics for about page.
contactPage.accept(analyticsVisitor); // Tracking analytics for contact page.
```

2. SEO Analysis:

```javascript
// Visitor: SEOVisitor
class SEOVisitor {
  visitHomePage(homePage) {
    // Perform SEO analysis for the home page
    console.log("Performing SEO analysis for home page.");
  }

  visitAboutPage(aboutPage) {
    // Perform SEO analysis for the about page
    console.log("Performing SEO analysis for about page.");
  }

  visitContactPage(contactPage) {
    // Perform SEO analysis for the contact page
    console.log("Performing SEO analysis for contact page.");
  }
}

// Element: Page
// ... (same as the previous example)

// Concrete Elements: HomePage, AboutPage, ContactPage
// ... (same as the previous example)

// Usage
const homePage = new HomePage();
const aboutPage = new AboutPage();
const contactPage = new ContactPage();

const seoVisitor = new SEOVisitor();

homePage.accept(seoVisitor); // Performing SEO analysis for home page.
aboutPage.accept(seoVisitor); // Performing SEO analysis for about page.
contactPage.accept(seoVisitor); // Performing SEO analysis for contact page.
```

3. DOM Manipulation:

```javascript
// Visitor: DOMVisitor
class DOMVisitor {
  visitImageElement(imageElement) {
    // Manipulate the image element in the DOM
    imageElement.setAttribute("src", "new-image.jpg");
  }

  visitLinkElement(linkElement) {
    // Manipulate the link element in the DOM
    linkElement.setAttribute("href", "https://example.com");
  }
}

// Element: DOMElement
class DOMElement {
  accept(visitor) {
    throw new Error("accept() must be implemented in the subclass");
  }
}

// Concrete Elements: ImageElement
class ImageElement extends DOMElement {
  accept(visitor) {
    visitor.visitImageElement(this);
  }
}

// Concrete Elements: LinkElement
class LinkElement extends DOMElement {
  accept(visitor) {
    visitor.visitLinkElement(this);
  }
}

// Usage
const imageElement = new ImageElement();
const linkElement = new LinkElement();

const domVisitor = new DOMVisitor();

imageElement.accept(domVisitor); // Manipulate the image element in the DOM


linkElement.accept(domVisitor); // Manipulate the link element in the DOM
```

4. Form Validation:

```javascript
// Visitor: FormValidationVisitor
class FormValidationVisitor {
  visitTextField(textField) {
    // Perform validation for the text field
    console.log("Validating text field:", textField.getValue());
  }

  visitCheckbox(checkbox) {
    // Perform validation for the checkbox
    console.log("Validating checkbox:", checkbox.isChecked());
  }
}

// Element: FormElement
class FormElement {
  accept(visitor) {
    throw new Error("accept() must be implemented in the subclass");
  }
}

// Concrete Elements: TextField
class TextField extends FormElement {
  constructor(value) {
    super();
    this.value = value;
  }

  getValue() {
    return this.value;
  }

  accept(visitor) {
    visitor.visitTextField(this);
  }
}

// Concrete Elements: Checkbox
class Checkbox extends FormElement {
  constructor(checked) {
    super();
    this.checked = checked;
  }

  isChecked() {
    return this.checked;
  }

  accept(visitor) {
    visitor.visitCheckbox(this);
  }
}

// Usage
const textField = new TextField("Hello");
const checkbox = new Checkbox(true);

const formValidationVisitor = new FormValidationVisitor();

textField.accept(formValidationVisitor); // Validating text field: Hello
checkbox.accept(formValidationVisitor); // Validating checkbox: true
```

5. Event Handling:

```javascript
// Visitor: EventVisitor
class EventVisitor {
  visitButton(button) {
    // Handle button click event
    button.addEventListener("click", () => {
      console.log("Button clicked!");
    });
  }

  visitLink(link) {
    // Handle link click event
    link.addEventListener("click", () => {
      console.log("Link clicked!");
    });
  }
}

// Element: UIElement
class UIElement {
  accept(visitor) {
    throw new Error("accept() must be implemented in the subclass");
  }
}

// Concrete Elements: Button
class Button extends UIElement {
  addEventListener(eventType, callback) {
    // Simulated method for adding event listener
    // (actual implementation depends on the UI framework)
    // For example, in a web browser, you would use `addEventListener` on a DOM element
    console.log("Adding event listener for button");
  }

  accept(visitor) {
    visitor.visitButton(this);
  }
}

// Concrete Elements: Link
class Link extends UIElement {
  addEventListener(eventType, callback) {
    // Simulated method for adding event listener
    console.log("Adding event listener for link");
  }

  accept(visitor) {
    visitor.visitLink(this);
  }
}

// Usage
const button = new Button();
const link = new Link();

const eventVisitor = new EventVisitor();

button.accept(eventVisitor); // Adding event listener for button
link.accept(eventVisitor); // Adding event listener for link
```

These examples demonstrate how the Visitor pattern can be applied in various web development scenarios, such as analytics tracking, SEO analysis, DOM manipulation, form validation, and event handling. The Visitor pattern allows you to separate the operations or behaviors from the elements themselves and provides a flexible way to extend or add new behaviors without modifying the existing elements.