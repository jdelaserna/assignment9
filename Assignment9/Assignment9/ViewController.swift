//
//  ViewController.swift
//  Assignment9
//
//  Created by Jorge Serna on 2018-07-05.
//  Copyright © 2018 Jorge Serna. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var todoList: [Todo] = [
        Todo(title: "Homework", todoDescription: "Do your homework.", priorityNumber: 3, isCompleted: false),
        Todo(title: "Shopping", todoDescription: "Buy a piece of salmon.", priorityNumber: 2, isCompleted: true),
        Todo(title: "Cleaning", todoDescription: "Clean your bedroom.", priorityNumber: 5, isCompleted: false),
        Todo(title: "Study", todoDescription: "Study for the quiz.", priorityNumber: 4, isCompleted: true),
        Todo(title: "Gym", todoDescription: "Go to the gym.", priorityNumber: 1, isCompleted: true)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "BikeRideCell", for: indexPath) as! BikeRideTableViewCell
//        cell.config(with: rides[indexPath.row])
        
        return cell
    }
}
