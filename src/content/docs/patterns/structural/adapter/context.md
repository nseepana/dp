---
title: Adapter
description: Adapter is a structural design pattern that allows objects with incompatible interfaces to collaborate.
---

`Adapter: Making Incompatible Classes Work Together`

### Purpose


The purpose of the Adapter pattern is to enable the collaboration of classes with different interfaces by converting one interface into another. It allows clients to work with classes that were initially incompatible.

### Context


The Adapter pattern is used when you encounter existing classes with mismatched interfaces, and you want to integrate them without modifying their original code. It proves helpful during the integration of different systems or libraries with varying interfaces.

### Participants

- **Target:** This participant defines the interface that clients expect and use. It lists the methods and properties the client code can access.
- **Adaptee:** An existing class or component that needs to be adapted. It possesses an incompatible interface that requires conversion.
- **Adapter:** Acting as a bridge, the Adapter participant implements the Target interface. It internally utilizes an instance of the Adaptee to provide the required functionality. The Adapter translates requests from the Target into suitable calls for the Adaptee.

### Flow
1. The client code interacts with the Target interface, expecting certain methods and properties to be available.
2. The Adapter, which implements the Target interface, receives the requests from the client code.
3. Internally, the Adapter uses an Adaptee instance to fulfill the requested functionality, converting the calls as needed.
4. The Adaptee, with its incompatible interface, responds to the adapted requests from the Adapter.
5. The Adapter then translates the Adaptee's responses back to the compatible format expected by the Target interface.
6. As a result, the client code can work seamlessly with the Adaptee, even though their original interfaces were incompatible.

### Real World Scenarios

1. **Database Connection Pooling (Performance Optimization):** Reusing and managing a pool of database connections to reduce connection overhead and improve performance.
2. **User Authentication (Security):** Implementing secure login and authentication mechanisms to protect user data and ensure authorized access.
3. **Caching (Performance Optimization):** Storing frequently accessed data in memory to reduce database queries and enhance application speed.
4. **Error Logging and Monitoring (Reliability):** Capturing and tracking application errors and exceptions to identify issues and ensure system stability.
5. **RESTful API (Integration):** Creating APIs following the REST architectural style to enable communication and data exchange between different software systems.
6. **Continuous Integration (CI/CD):** Automating the process of integrating, testing, and deploying code changes to achieve faster and more reliable software delivery.
7. **Encryption and Decryption (Security):** Securing sensitive data by encoding it into unreadable form (encryption) and decoding it back (decryption) when needed.
8. **Load Balancing (Scalability):** Distributing incoming network traffic across multiple servers to optimize resource utilization and ensure high availability.
9. **User Input Validation (Security):** Validating and sanitizing user inputs to prevent malicious attacks like SQL injection and cross-site scripting (XSS).
10. **Session Management (User Experience):** Maintaining user session data to keep track of user interactions and maintain application state across requests.

### Mnemonic

**"Adaptee's Adapter Affair"**

Explanation:

**"Adaptee's Adapter"**: Represents the Adapter pattern, where the Adaptee finds a compatible "Adapter" partner to dance together, enabling them to work seamlessly at the affair.

**"Affair"**: Denotes the context where the Adapter pattern comes into play, facilitating a harmonious collaboration between Adaptee and Target, as if they were made for each other.

Imagine an "Adaptee's Adapter Affair," where the Adapter pattern acts as a matchmaker, bringing together the Adaptee and Target to dance in perfect synchronization. The Adaptee, with its original incompatible interface, finds a suitable Adapter partner that translates its moves into a language understood by the Target. As they dance together at the affair, they create a beautiful melody of code integration without needing to change their original essence. The affair becomes a celebration of compatibility, allowing diverse classes to join hands and work together gracefully, thanks to the Adapter pattern's matchmaking skills.