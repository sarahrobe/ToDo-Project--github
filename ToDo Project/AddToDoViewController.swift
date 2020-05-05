//
//  AddToDoViewController.swift
//  ToDo Project
//
//  Created by Sarah Roberts on 5/2/20.
//  Copyright © 2020 Sarah Roberts. All rights reserved.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var isImportant: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func addTapped(_ sender: Any) {

          if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

            let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)

            if let titleText = titleTextField.text {
                // we will take the titleText and assign that value to toDo.name
                // this .name and .important came from the attributes you typed in on the Core Data page!
                toDo.name = titleText
                toDo.important = isImportant.isOn
            }

            try? context.save()

            navigationController?.popViewController(animated: true)
          }

        }
        
        
        
        /*
        let toDo = ToDo()
        
        if let titleText = titleTextField.text {
            
            toDo.name = titleText
            toDo.important = isImportant.isOn
            
        }
        
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
            */
    
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        }
        
    }
    
*/
    
}
