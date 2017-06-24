//
//  CustomTableViewCell.swift
//  TestForGenesis
//
//  Created by Indieg0 on 24.06.17.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
