//
//  TableViewController.swift
//  Assignment9
//
//  Created by Jorge Serna on 2018-07-09.
//  Copyright © 2018 Jorge Serna. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet weak var todoTableView: UITableView!
    var todoList: [Todo] = [
        Todo(title: "Homework", todoDescription: "Do your homework.", priorityNumber: "3", isCompleted: false),
        Todo(title: "Shopping", todoDescription: "Buy a piece of salmon.", priorityNumber: "2", isCompleted: true),
        Todo(title: "Cleaning", todoDescription: "Clean your bedroom.", priorityNumber: "5", isCompleted: false),
        Todo(title: "Study", todoDescription: "Study for the quiz.", priorityNumber: "4", isCompleted: true),
        Todo(title: "Gym", todoDescription: "Go to the gym.", priorityNumber: "1", isCompleted: true)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.config(with: todoList[indexPath.row])
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EditItem" {
            let destination = segue.destination as? DetailsViewController
            destination?.todoItem = todoList[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            todoList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    

}
