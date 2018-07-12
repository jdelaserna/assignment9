//
//  DetailsViewController.swift
//  Assignment9
//
//  Created by Jorge Serna on 2018-07-10.
//  Copyright © 2018 Jorge Serna. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet weak var descriptionLabel: UITextField!
    @IBOutlet weak var priorityNumberLabel: UITextField!
    @IBOutlet weak var isCompletedLabel: UITextField!
    
    @IBAction func done() {
        navigationController?.popViewController(animated: true)
    }
    
    var todoItem:Todo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            titleLabel.text = "Title: " + (todoItem?.title)!
            descriptionLabel.text = "Description: " + (todoItem?.todoDescription)!
            priorityNumberLabel.text = "Priority: " + (todoItem?.priorityNumber)!
        
            if (todoItem?.isCompleted)! {
                isCompletedLabel.text = "Is completed?: Yes"
            } else {
                isCompletedLabel.text = "Is completed?: Not yet"
            }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

}
