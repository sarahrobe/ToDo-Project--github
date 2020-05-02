//
//  ToDoTableViewController.swift
//  ToDo Project
//
//  Created by Sarah Roberts on 5/2/20.
//  Copyright © 2020 Sarah Roberts. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var toDos : [ToDo] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        toDos = createToDos()
    }

    func createToDos() -> [ToDo] {
        let ob = ToDo()
        ob.name = "outer banks"
        ob.important = true
        
        let tk = ToDo()
        tk.name = "tiger king"

        return [ob, tk]
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let toDo = toDos[indexPath.row]

        if toDo.important {
          cell.textLabel?.text = "👀" + toDo.name
        } else {
          cell.textLabel?.text = toDo.name
        }
        
        return cell
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 
    }


}
