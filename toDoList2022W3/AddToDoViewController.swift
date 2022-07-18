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
        let toDo = ToDo()
        
        if let titleText = titleTextField.text{
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
        }
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }

}
