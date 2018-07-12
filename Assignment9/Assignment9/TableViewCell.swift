//
//  TableViewCell.swift
//  Assignment9
//
//  Created by Jorge Serna on 2018-07-09.
//  Copyright © 2018 Jorge Serna. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func config(with todo: Todo){
        
        titleLabel.text = todo.title
        
        if todo.isCompleted {
            let attributeString =  NSMutableAttributedString(string: "\(todo.todoDescription) - \(todo.priorityNumber)")
            
            attributeString.addAttribute(NSAttributedStringKey.strikethroughStyle,
                                         value: NSUnderlineStyle.styleSingle.rawValue,
                                         range: NSMakeRange(0, attributeString.length))
            descriptionLabel.attributedText = attributeString
            
        } else {
            descriptionLabel.text = "\(todo.todoDescription) - \(todo.priorityNumber)"
        }
    }

}
