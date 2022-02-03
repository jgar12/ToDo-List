//
//  ToDoDetailTableViewController.swift
//  ToDo List
//
//  Created by Garcia, Jordan - Cathey on 2/1/22.
//

import UIKit

class ToDoDetailTableViewController: UITableViewController {
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var noteView: UITextView!
    @IBOutlet weak var nameField: UITextField!
    
    var toDoItem: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if toDoItem == nil {
            toDoItem = ""
            nameField.text = toDoItem
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        toDoItem = nameField.text
    }
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentinginAddMode = presentingViewController is UINavigationController
        if isPresentinginAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
}
