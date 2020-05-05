//
//  CompletedToDoViewController.swift
//  ToDo Project
//
//  Created by Sarah Roberts on 5/2/20.
//  Copyright © 2020 Sarah Roberts. All rights reserved.
//

import UIKit
import CoreData

class CompletedToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    var selectedToDo : ToDoCD?
    
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedToDo?.name
    }
    
    
    @IBAction func completeTapped(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        
        if let theToDo = selectedToDo {
            context.delete(theToDo)
            navigationController?.popViewController(animated: true)
        }
    }
    
    
}
