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

// MARK: -- String Extensions

// Quickly replace a string within a string
// Credit: Stack Overflow - 24200888

public extension String {
    
    // === Example Usage ===
    
    //  let string = "How cool is Swift?"
    //  let updatedString = string.replace("cool", withString: "awesome")
    
    func replace(target: String, withString: String) -> String {
        return self.stringByReplacingOccurrencesOfString(target, withString: withString, options: NSStringCompareOptions.LiteralSearch, range: nil)
    }
    
    // Further adapted 24200888 to create string removal
    
    // === Example Usage ===
    
    //  let string = "How cool is Swift?"
    //  let updatedString = string.replace("cool", withString: "awesome")
    
    func remove(stringToRemove: String) -> String {
        return self.replace(target: stringToRemove, withString: "")
    }
}

// MARK: -- Grand Central Dispatch

// Delay a main queue dispatch by seconds and provide a closure
// Credit: Stack Overflow - 24034544

// === Example Usage ===

//  delay(0.5) {
//      doSomething()
//  }

public func delay(delay:Double, closure:()->()) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}

