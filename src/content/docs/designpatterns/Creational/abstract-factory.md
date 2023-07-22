---
title: Abstract Factory
description: A guide in my new Starlight docs site.
---

The Abstract Factory Pattern provides an interface for creating families of related or dependent objects without specifying their concrete classes.

## Problem

Imagine that you're creating a furniture shop simulator. Your code consists of classes that represent:

- a family of related products, say: Chair + Sofa + CoffeeTable.
- several variants of this family. For example, products Chair + Sofa + CoffeeTable are available in these variants: Modern, Victorian, ArtDeco.


You need a way to create individual furniture objects so that they match other objects of the same family. Customers get quite mad when they receive non-matching furniture.