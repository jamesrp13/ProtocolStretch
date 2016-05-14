//
//  Person.swift
//  ProtocolStretch
//
//  Created by James Pacheco on 2/28/16.
//  Copyright © 2016 James Pacheco. All rights reserved.
//

import Foundation

class Person: Equatable {
    let firstName: String
    let lastName: String
    let age: Int
    var fullName: String {
        return firstName + " " + lastName
    }

    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
}

func ==(lhs: Person, rhs: Person) -> Bool {
    return lhs.fullName == rhs.fullName && lhs.age == rhs.age
}