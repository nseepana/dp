---
title: Proxy
description: Proxy is a structural design pattern that provides an object that acts as a substitute for a real service object used by a client. A proxy receives client requests, does some work (access control, caching, etc.) and then passes the request to a service object.
---

### Purpose


The Proxy Pattern is a structural design pattern used to provide a surrogate or placeholder for another object. It enables us to control access to the real object, allowing us to add extra functionalities or handle access permissions without altering the core functionality of the underlying object. The primary purpose of the Proxy Pattern is to act as an intermediary, facilitating the interaction between the client and the real object.

### Context


In software development, especially in object-oriented programming, there are scenarios where direct access to objects is not desirable or not feasible. This could be due to various reasons, such as expensive object creation, restricted access, or the need for additional operations before accessing the object. The Proxy Pattern helps us address these situations by providing a surrogate object that stands in place of the real object and acts as a gatekeeper for accessing it.

### Participants

1. **Client:** The component that initiates the request to access the target object but interacts with the Proxy.
2. **Proxy:** This class represents the surrogate object and maintains a reference to the real object. It acts as an intermediary by controlling access and providing additional functionalities.
3. **RealSubject:** The real object that the Proxy represents and protects. It defines the core functionality that the Client ultimately wants to access.

### Flow
1. The Client makes a request to access the RealSubject through the Proxy.
2. The Proxy intercepts the request and decides whether to forward the request to the RealSubject or perform additional operations before allowing access.
3. If necessary, the Proxy may create the RealSubject and store a reference to it for future requests.
4. The Proxy executes any pre-processing tasks, such as access control, logging, or caching, based on the specific requirements.
5. The Proxy either delegates the request to the RealSubject or directly handles it, depending on the situation.
6. The RealSubject performs the core functionality and returns the result to the Proxy if the Proxy had delegated the request.
7. The Proxy may apply post-processing tasks on the RealSubject's result before passing it back to the Client.


### Real World Scenarios

1. **Caching Proxy**: Reduce server load and speed up access times by caching expensive data requests.
2. **Remote Proxy**: Access and manage remote objects across networks, facilitating distributed systems communication.
3. **Virtual Proxy**: Lazily initialize resource-intensive objects to improve application performance.
4. **Access Control Proxy**: Enforce security measures by regulating access to sensitive components.
5. **Logging Proxy**: Track and record interactions with objects for debugging and auditing purposes.
6. **Firewall Proxy**: Act as a protective barrier to control access to specific services or resources.
7. **Image Proxy**: Load and display images on demand, enhancing the user experience and reducing initial load times.
8. **Smart References**: Automate reference counting to manage memory efficiently and avoid memory leaks.
9. **Synchronization Proxy**: Coordinate access to shared resources in multithreaded environments.
10. **Lazy Initialization**: Delay the creation of objects until they are actually required, improving resource utilization.

### Mnemonic

**"Proxies' Galaxy"**

Explanation:

**"Proxies"**: Represents the Proxy Pattern, which forms a protective galaxy of surrogates to control access and enhance functionalities for real objects.

**"Galaxy"**: Encompasses various celestial bodies (scenarios) like Caching Proxy, Remote Proxy, Virtual Proxy, etc., each shining brightly with its unique purpose and benefits. Together, they form a powerful galaxy of Proxies, providing developers with a universe of design choices to optimize their software applications.

Imagine a "Proxies' Galaxy" where each Proxy shines like a brilliant star, offering its own specialized support in different real-world scenarios. Developers can navigate through this vast galaxy, selecting the most suitable Proxy to achieve their specific goals, just as astronomers explore the cosmos, uncovering hidden wonders among the stars. The Proxies' Galaxy empowers developers to safeguard and enhance their software creations, making it an awe-inspiring constellation of design possibilities.
