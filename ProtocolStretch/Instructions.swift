//
//  Instructions.swift
//  ProtocolStretch
//
//  Created by James Pacheco on 2/28/16.
//  Copyright © 2016 James Pacheco. All rights reserved.
//

/*
Using the project provided, create a protocol called PersistentType that requires objects conforming to it to have a variable of type String called saveKey, which will be the key under which Person objects are saved, a computed variable called objectAsDictionary that returns a dictionary of type [String: AnyObject]. It should also require a failable initializer that takes a dictionary of type [String: AnyObject] and initializes a Person object (this should all seem similar to what you do for NSUserDefaults, only now we are making a protocol for it). Lastly, require a func save().
 
Make your Person object conform to the PersistentType in the class signature. The compiler should throw an error saying that you don't conform to PersistentType. Add the necessary items except for the func save().
 
Create an extension PersistentType and put your method signature for func save(). Notice that if everything else is implemented, your compiler error saying you don't conform to PersistentType goes away. Now implement your save function to pull an array of dictionaries representing Person objects from NSUserDefaults, add this person's dictionaryCopy to the array, and re-save to the same spot in NSUserDefaults.
 
 Turn to your PersonController and create a func saveToPersistentStorage() and func loadFromPersistentStorage(). Your loadFromPersistentStorage will look just like what you remember from the NSUserDefaults lesson. Your saveToPersistentStorage function should remove what is in NSUserDefaults and then loop through your people array, calling the save function on each person.

Black Diamond:
Create another class called Family that has parents and kids and conforms to the PersistentType protocol. Change the tableView so that it shows a list of families, and when you tap on a cell it takes you to a list of the people inside the family. This will require you to create a FamilyController that looks similar to the PersonController.

*/