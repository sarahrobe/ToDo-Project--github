//
//  CompletedToDoViewController.swift
//  ToDo Project
//
//  Created by Sarah Roberts on 5/2/20.
//  Copyright © 2020 Sarah Roberts. All rights reserved.
//

import UIKit

class CompletedToDoViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()
    
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedToDo.name
    }
    

    @IBAction func completeTapped(_ sender: Any) {
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
