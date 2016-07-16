//
//  Person.swift
//  swift-people
//
//  Created by Ismael Barry on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    
    // Declare the Person class with four readonly properties:
    
    let name: String
    
    // Getter is public. Set is private to other classes and can only be set within this class.
    private(set) var ageInYears: Int?
    
    // Getter is public. Set is private to other classes and can only be set within this class.
    private(set) var skills: [String] = []
    
    // makes setter and getter are private and only accessible within this class. We cannot change it from somewhere else.
    var qualifiedTutor: Bool { return skills.count > 4 }
    
    // Write a designated initializer that takes values for the name and ageInYears properties. Top-tip: Remember that ageInYears is an optional property.
    init(name: String, ageInYears: Int?) {
        
        self.name = name
        self.ageInYears = ageInYears
    }
    
    // Write a convenience initializer that takes an argument for name, but not ageInYears. This should call the designated initializer with a nil value for ageInYears, since no information was collected for it.
    convenience init(name: String) {
        
        self.init(name: name, ageInYears: nil)
    }
    
    // Write a default initializer that calls the designated initializer to set the name property to "John Doe" and ageInYears to nil.
    convenience init() {
        
        self.init(name: "John Doe", ageInYears: nil)
    }
    
    // Write a method named celebrateBirthday() that returns a String. If the ageInYears property contains nil, it should return a happy-birthday message with the person's name
    func celebrateBirthday() -> String {
     
        var returnString: String = ""
        
        if self.ageInYears == nil {
            
            returnString = "HAPPY BIRTHDAY, \(self.name.uppercaseString)!!!"
        
        } else {
            
            if var age = ageInYears {
                age += 1
                returnString = "HAPPY \(age)\(self.ageInYears?.ordinal()) BIRTHDAY, \(name)!!!"
            }
        }
        
        return returnString
    }
    
    func learnSkillBash() {
        
        if self.skills.contains("bash") {
            
            return
            
        } else {
            
            self.skills.append("bash")
            
        }
    }
    
    func learnSkillXcode() {
        
        if self.skills.contains("Xcode") {
            
            return
            
        } else {
            
            self.skills.append("Xcode")
            
        }
    }
    
    func learnSkillObjectiveC() {
        
        if self.skills.contains("Objective-C") {
            
            return
            
        } else {
            
            self.skills.append("Objective-C")
            
        }
    }
    
    func learnSkillSwift() {
        
        if self.skills.contains("Swift") {
            
            return
            
        } else {
            
            self.skills.append("Swift")
        }
    }

    func learnSkillInterfaceBuilder() {
        
        if self.skills.contains("Interface Builder") {
            
            return
            
        } else {
            
            self.skills.append("Interface Builder")
        }
    }
}