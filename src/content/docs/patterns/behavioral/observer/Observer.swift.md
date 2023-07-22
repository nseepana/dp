---
title: Observer.swift
description: ""
---

```swift
// Subject (Observable)
class NewsAgency {
    private var news: String = ""
    private var subscribers: [Subscriber] = []

    func setNews(_ news: String) {
        self.news = news
        notifySubscribers()
    }

    func notifySubscribers() {
        for subscriber in subscribers {
            subscriber.update(news: news)
        }
    }

    func subscribe(_ subscriber: Subscriber) {
        subscribers.append(subscriber)
    }

    func unsubscribe(_ subscriber: Subscriber) {
        subscribers.removeAll { $0 === subscriber }
    }
}

// Observer
class Subscriber {
    let name: String

    init(name: String) {
        self.name = name
    }

    func update(news: String) {
        print("\(name) received news: \(news)")
    }
}

// Usage
let newsAgency = NewsAgency()

let subscriber1 = Subscriber(name: "Subscriber 1")
let subscriber2 = Subscriber(name: "Subscriber 2")
let subscriber3 = Subscriber(name: "Subscriber 3")

newsAgency.subscribe(subscriber1)
newsAgency.subscribe(subscriber2)
newsAgency.subscribe(subscriber3)

newsAgency.setNews("Breaking News: Swift becomes the most loved programming language!")
// Output:
// Subscriber 1 received news: Breaking News: Swift becomes the most loved programming language!
// Subscriber 2 received news: Breaking News: Swift becomes the most loved programming language!
// Subscriber 3 received news: Breaking News: Swift becomes the most loved programming language!

newsAgency.unsubscribe(subscriber2)

newsAgency.setNews("Breaking News: New Swift version released!")
// Output:
// Subscriber 1 received news: Breaking News: New Swift version released!
// Subscriber 3 received news: Breaking News: New Swift version released!
```