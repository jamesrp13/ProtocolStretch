//
//  Person.swift
//  ProtocolStretch
//
//  Created by James Pacheco on 2/28/16.
//  Copyright © 2016 James Pacheco. All rights reserved.
//

import Foundation

class Person: PersistentType, Equatable {
    let firstName: String
    let lastName: String
    let age: Int
    var fullName: String {
        return firstName + " " + lastName
    }
    
    var saveKey: String = "people"
    
    var objectAsDictionary: [String: AnyObject] {
        return ["firstName":firstName, "lastName":lastName, "age":age]
    }
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
    required init?(dictionary: [String: AnyObject]) {
        guard let firstName = dictionary["firstName"] as? String,
            lastName = dictionary["lastName"] as? String,
            age = dictionary["age"] as? Int else {return nil}
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
}

func ==(lhs: Person, rhs: Person) -> Bool {
    return lhs.fullName == rhs.fullName && lhs.age == rhs.age
}