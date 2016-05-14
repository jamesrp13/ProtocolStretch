//
//  PersonController.swift
//  ProtocolStretch
//
//  Created by James Pacheco on 2/28/16.
//  Copyright © 2016 James Pacheco. All rights reserved.
//

import Foundation

class PersonController {
    
    static let sharedController = PersonController()
    
    var people: [Person] = []
    
    init() {
        loadFromPersistentStorage()
    }
    
    func addPerson(firstName: String, lastName: String, age: Int) {
        let person = Person(firstName: firstName, lastName: lastName, age: age)
        people.append(person)
        saveToPersistentStorage()
    }
    
    func deletePerson(person: Person) {
        guard let index = people.indexOf(person) else {return}
        people.removeAtIndex(index)
        saveToPersistentStorage()
    }
    
    func saveToPersistentStorage() {
        NSUserDefaults.standardUserDefaults().removeObjectForKey("people")
        for person in people {
            person.save()
        }
    }
    
    func loadFromPersistentStorage() {
        guard let peopleDictionaryArray = NSUserDefaults.standardUserDefaults().objectForKey("people") as? [[String: AnyObject]] else {return}
        people = peopleDictionaryArray.flatMap {Person(dictionary: $0)}
    }
}