//
//  PersonTableViewController.swift
//  ProtocolStretch
//
//  Created by James Pacheco on 2/28/16.
//  Copyright © 2016 James Pacheco. All rights reserved.
//

import UIKit

class PersonTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PersonController.sharedController.people.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCellWithIdentifier("personCell", forIndexPath: indexPath)
        let person = PersonController.sharedController.people[indexPath.row]
        cell.textLabel?.text = person.fullName
        cell.detailTextLabel?.text = "Age: \(person.age)"
        return cell
    }
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            PersonController.sharedController.deletePerson(PersonController.sharedController.people[indexPath.row])
            tableView.reloadData()
        }
    }
    
    @IBAction func addButtonTapped(sender: AnyObject) {
        let addPersonAlertController = UIAlertController(title: "Add a person", message: nil, preferredStyle: .Alert)
        let saveAction = UIAlertAction(title: "Add", style: .Cancel) { (action) -> Void in
            guard let firstName = addPersonAlertController.textFields?[0].text,
                lastName = addPersonAlertController.textFields?[1].text,
                ageString = addPersonAlertController.textFields?.last?.text,
                age = Int(ageString) else {return}
            PersonController.sharedController.addPerson(firstName, lastName: lastName, age: age)
            self.tableView.reloadData()
        }
        
        addPersonAlertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            textField.placeholder = "First name"
        }
        addPersonAlertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            textField.placeholder = "Last name"
        }
        addPersonAlertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            textField.placeholder = "Age"
            textField.keyboardType = .NumberPad
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Default, handler: nil)
        addPersonAlertController.addAction(saveAction)
        addPersonAlertController.addAction(cancelAction)
        presentViewController(addPersonAlertController, animated: true, completion: nil)
    }


}
