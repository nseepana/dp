---
title: Memento
description: Memento is a behavioral design pattern that lets you save and restore the previous state of an object without revealing the details of its implementation.
---

### Purpose


The purpose of the Memento design pattern is to provide a way to capture and restore the internal state of an object without violating encapsulation. By doing so, the pattern enables objects to be restored to a previous state, making it useful in scenarios where you need to implement undo/redo functionality or manage the history of an object's state changes.

### Context


The Memento pattern is a behavioral design pattern, falling under the Gang of Four's (GoF) categorization. It is suitable for situations where an object's state needs to be saved and restored efficiently. The pattern helps maintain the object's state history, allowing users to navigate between different states or revert changes as required.

### Participants

1. **Originator:** This is the object whose state we want to save and restore. It creates and stores the memento objects containing its state.
2. **Memento:** The Memento class represents the state of the Originator object at a particular point in time. It allows the Originator to restore its state to the state it had when the Memento was created.
3. **Caretaker:** The Caretaker is responsible for holding and managing the collection of Mementos. It requests the Originator to create and store Mementos while keeping track of the history of state changes.
4. **Client:** The Client interacts with the Originator through the Caretaker to save or restore the object's state.

### Flow

1. The Client creates an instance of the Originator class and initializes its initial state.
2. The Caretaker is also instantiated, which maintains a list (stack or history) of Mementos associated with the Originator.
3. The Client interacts with the Originator, making changes to its state over time as required.
4. Whenever a significant state change occurs, the Client requests the Originator to create a Memento object containing its current state.
5. The Originator creates the Memento and hands it over to the Caretaker, which stores it in its history.
6. The Caretaker continues to collect Mementos as the state of the Originator changes further.
7. If the Client wants to undo or restore the state to a previous point, it requests the Caretaker to provide the appropriate Memento.
8. The Caretaker hands over the requested Memento to the Originator.
9. The Originator uses the information in the Memento to restore its state to the state represented by the Memento.
10. The Client can now continue interacting with the Originator, starting from the restored state or continue making further changes and saving new Mementos.

Using the Memento pattern, the Client can effectively manage the state of the Originator, enabling undo/redo functionality or facilitating the restoration of previous states as needed, all while keeping the Originator's internal implementation details hidden and encapsulated.

### Real World Scenarios

**1. Version Control Systems (VCS)**: Managing and tracking changes in software code to enable collaboration and history tracking among developers.

**2. Text Editors' Undo/Redo functionality**: Allowing users to revert or reapply changes in text documents to previous states.

**3. Database Rollbacks**: Restoring databases to a previous state after encountering errors or unwanted changes.

**4. Gaming Save Points**: Allowing players to save their progress at specific points in a game and resume from those points later.

**5. Web Form Data Recovery**: Saving and restoring data in web forms when users navigate away or submit forms with errors.

**6. Simulation Software State Management**: Capturing and restoring the state of a simulation software application for analysis and debugging purposes.

**7. Workflow Management**: Saving intermediate states in complex workflows to enable users to resume from a previous step if necessary.

**8. Configuration Management**: Saving and restoring system configurations to handle changes in hardware or software environments.

**9. Collaborative Editing**: Enabling multiple users to collaborate on a document while preserving individual undo/redo capabilities.

**10. Electronic Health Record Systems**: Storing and recovering patient data to maintain a history of medical records.

**11. Content Management Systems (CMS)**: Saving and restoring previous versions of web content for content creators and administrators.

**12. Finite State Machines**: Maintaining and transitioning between states in state machines during program execution.

**13. Drawing Applications**: Supporting undo/redo functionality for drawing and editing operations.

**14. Flight Simulator State Restoration**: Restoring aircraft state in flight simulators to practice specific scenarios repeatedly.

**15. System Rollback**: Rolling back system updates in case of software or configuration failures.

**16. Document Editing Software**: Allowing users to revert to previous document versions.

**17. Financial Trading Platforms**: Capturing and restoring trading account states to review trading history and performance.

**18. E-commerce Shopping Carts**: Saving and restoring cart contents for users between sessions.

**19. Internet Browser History**: Managing browsing history and allowing users to navigate back to previous web pages.

**20. File Compression/Decompression**: Saving and restoring file states during compression and decompression operations.

### Mnemonic

**"Memory Minder"**

Explanation:

**"Memory"**: Represents the Memento pattern, serving as a mental aid to capture and remember the object's state at different points in time.

**"Minder"**: Symbolizes the Caretaker, responsible for minding and managing the collection of Mementos, ensuring the object's state history is well-preserved.

Imagine a "Memory Minder" who acts as the facilitator of a grand memory-keeping event. Various guests (Mementos) attend the event, each capturing a unique snapshot of the object's state. The Minder diligently records and organizes these memories, allowing the guests to relive and restore the past states at any time. As more guests join the event, the memory collection grows, promoting efficient state management and providing a remarkable way to handle undo/redo functionality or state restoration with ease. The Memory Minder ensures the party of memories remains vibrant and useful throughout the software development journey.


