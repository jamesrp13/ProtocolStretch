//
//  PersistenceController.swift
//  ProtocolStretch
//
//  Created by James Pacheco on 2/28/16.
//  Copyright © 2016 James Pacheco. All rights reserved.
//

import Foundation

protocol PersistentType {
    var saveKey: String {get}
    var objectAsDictionary: [String: AnyObject] {get}
    
    init?(dictionary: [String: AnyObject])
    func save()
}

extension PersistentType {
    func save() {
        if var peopleDictionaryArray = NSUserDefaults.standardUserDefaults().objectForKey(saveKey) as? [[String: AnyObject]] {
            peopleDictionaryArray.append(self.objectAsDictionary)
            NSUserDefaults.standardUserDefaults().setValue(peopleDictionaryArray, forKey: saveKey)
        } else {
            NSUserDefaults.standardUserDefaults().setValue([self.objectAsDictionary], forKey: saveKey)
        }
    }
}