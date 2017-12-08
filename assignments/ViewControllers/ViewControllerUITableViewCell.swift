//
//  ViewControllerUITableViewCell.swift
//  assignments
//
//  Created by Admin on 19 Kislev 5778.
//  Copyright © 5778 Naor. All rights reserved.
//

import UIKit

class ViewControllerUITableViewCell: UITableViewCell {

    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
