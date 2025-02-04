//
//  CompleteToDoViewController.swift
//  toDoList2022W3
//
//  Created by Scholar on 7/18/22.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController()//accessing data from the previous screen
    //var selectedToDo = ToDo()//creating an instance of class ToDo
    var selectedToDo : ToDoCD?
    
    
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedToDo?.name
        // Do any additional setup after loading the view.
    }
    

    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let theToDo = selectedToDo{
                context.delete(theToDo)
                navigationController?.popViewController(animated: true)
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
