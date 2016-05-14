//
//  Instructions.swift
//  ProtocolStretch
//
//  Created by James Pacheco on 2/28/16.
//  Copyright © 2016 James Pacheco. All rights reserved.
//

/*
Using the project provided, create a protocol called PersistentType that requires objects conforming to it to have a variable of type String called saveKey, which will be the key under which Person objects are saved, a computed variable called objectAsDictionary that returns a dictionary of type [String: AnyObject]. It should also require a failable initializer that takes a dictionary of type [String: AnyObject] and initializes a Person object (this should all seem similar to what you do for NSUserDefaults, only now we are making a protocol for it). Lastly, require a func save() and a func delete().

Make your Person object conform to the PersistentType in the class signature. The compiler should throw an error saying that you don't conform to PersistentType. Add the necessary items except for the func save() and func delete().
 
Create an extension PersistentType and put your method signatures for func save() and func delete() there. Notice that if everything else is implemented, your compiler error saying you don't conform to PersistentType goes away. Now implement your save function to pull an array of Person objects from NSUserDefaults, add this person to the array, and re-save to the same spot in NSUserDefaults.
 
 Implement your delete function to pull an array of Person objects from NSUserDefaults, delete this person from the array, and re-save to the same spot in NSUserDefaults.
 
 Turn to your PersonController and modify your addPerson and deletePerson functions to instead of add to and remove from the people array, add to and remove from NSUserDefaults, and then set the people array equal to what is in NSUserDefaults.

Black Diamond:
Create another class called Family that has parents and kids and conforms to the PersistentType protocol. Change the tableView so that it shows a list of families, and when you tap on a cell it takes you to a list of the people inside the family. This will require you to create a FamilyController that looks similar to the PersonController.

*/