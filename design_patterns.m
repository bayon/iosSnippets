// Design Patterns
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 77571C97-2B35-4EBF-A1F1-3F4FBDEE8F42
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Generic
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
Design Patterns:
——————————————————
Main Seven Patterns:
-Strategy
-Observer
-Decorator
-Singleton
-State
Collections
-Factory

——————————————————
Creation Patterns:
	Singleton
	Factory
Structural Patterns:
	Decorator 
Behavioral Patterns:
	Strategy
	State
	Observer
Concurrency Patterns:
——————————————————
CREATION Patterns:
	Singleton 
		- Ensures that a class only has one instance , and provides a global point of access.
	Factory 
		- Define an interface for creating a single object, but let subclasses decide which class to instantiate.
		Factory Method lets a class defer instantiation to a subclass.(Dependency Injection)
	Abstract Factory 
		- The Abstract Factory pattern provides an interface for creating families of related or dependent objects 
		without specifying their concrete classes.
STRUCTURAL Patterns:
	Decorator  
		 - The Decorator pattern attaches additional responsibilities to an object dynamically.
                    Decorators provide a flexible alternative to subclassing for extended functionality.

BEHAVIORAL Patterns:
	Strategy 
		- the Strategy Pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable.
		Strategy lets the algorithm vary independently from the clients that use it.
	State 
		- Allow an object to alter it’s behavior when it’s internal state changes. The object will appear to change it’s class.
	Observer
		- The observer pattern defines a one-to-many dependency between objects so that when one object changes state,
		all of its dependents are notified and updated automatically.

——————————————————
Design Principles:
	1. identify code that changes, and separate it.( Encapsulate what Varies)
	2. Program to an interface, not an implementation	
	3. Favor Composition over inheritance
	4. Classes should be open for extension, but closed for modification.
	5. Depend upon abstractions. Do not depend upon concrete classes.
	6. Strive for loosely coupled designs between objects that interact.

Excellent Reference: https://www.dropbox.com/sh/b8b8x17kp8scnz1/_-siU-tCdZ/Head_First_Design_Patterns.pdf