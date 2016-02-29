//
//  Instructions.swift
//  ProtocolStretch
//
//  Created by James Pacheco on 2/28/16.
//  Copyright © 2016 James Pacheco. All rights reserved.
//

/*
Using the project provided, create a protocol called PersistentType that requires objects conforming to it to have a variable of type String called key, and a computed variable called objectAsDictionary that returns a dictionary of type [String: AnyObject]. It should also require a func save() and a func delete().

Then use an extension on PersistentType to implement the two required functions.

Black Diamond:
Create another class called Family that has parents and kids and conforms to the PersistentType protocol. Change the tableView so that it shows a list of families, and when you tap on a cell it takes you to a list of the people inside the family. This will require you to create a FamilyController that looks similar to the PersonController.

*/