//
//  Todo.swift
//  Assignment9
//
//  Created by Jorge Serna on 2018-07-05.
//  Copyright © 2018 Jorge Serna. All rights reserved.
//

import Foundation

class Todo {
    
    var title: String
    var todoDescription: String
    var priorityNumber: String
    var isCompleted: Bool

    init(title: String, todoDescription: String, priorityNumber: String, isCompleted: Bool) {
        self.title = title
        self.todoDescription = todoDescription
        self.priorityNumber = priorityNumber
        self.isCompleted = isCompleted
    }
}
