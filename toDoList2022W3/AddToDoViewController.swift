//
//  AddToDoViewController.swift
//  toDoList2022W3
//
//  Created by Scholar on 7/18/22.
//

import UIKit

class AddToDoViewController: UIViewController {

    var previousVC =
    ToDoTableViewController()//creates a reference to the table view so I can access its data
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    @IBAction func addTapped(_ sender: Any) {

          // we have to grab this view context to be able to work with Core Data
          if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

            // we are creating a new ToDoCD object here, naming it toDo
            let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)

            // if the titleTextField has text, we will call that text titleText
            if let titleText = titleTextField.text {
                // we will take the titleText and assign that value to toDo.name
                // this .name and .important came from the attributes you typed in on the Core Data page!
                toDo.name = titleText
                toDo.important = importantSwitch.isOn
            }

            try? context.save()

            navigationController?.popViewController(animated: true)
          }

        }
}
