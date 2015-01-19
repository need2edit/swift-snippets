//
//  Snippets.swift
//  
//
//  Created by Jake Young on 1/19/15.
//  Website: http://www.thoughtsfromarobot.com
//
//  These snippets have been collected or developed
//  over my timeline of learning Swift, I did my best 
//  to credit the original creators, I hope you find them
//  useful and helpful.  For more resources, please visit
//  my website at http://www.thoughtsfromarobot.com
//
//  My hope is that you learn from these examples and put them to use
//
//

import Foundation
import UIKit

// MARK: -- Boilerplate Code

// Quickly replace a string within a string

class ParentClass {
    let name: String
    let numberOfThings: Double
    let percentageOfThings: Double
    
    var aComputedProperty: Double {
        get {
            return numberOfThings * percentageOfThings
        }
        set {
            numberOfThings = newValue / percentageOfThings
        }
    }
    
    init(name: String, numberOfThings: Double, percentageOfThings: Double) {
        self.name = name
        self.numberOfThings = numberOfThings
        self.percentageOfThings = percentageOfThings
    }
    
}

class ChildClass: ParentClass {
    
    // This class is a child class of ParentClass
    // It adds an additional property
    
    let anotherProperty: String
    
    init(name: String, numberOfThings: Double, precentageOfThings: Double, anotherProperty: String) {
        self.anotherProperty = anotherProperty
        super.init(name: name, numberOfThings: numberOfThings, percentageOfThings: percentageOfThings, anotherProperty)
    }
    
    // This convenience initializer takes a name, but sets defaults for the rest of the properties
    
    convenience init(name: String) {
        self.init(name: name, numberOfThings: 10.0, precentageOfThings: 0.5, anotherProperty: "Another Property")
    }
}