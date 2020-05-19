//
//  ThingCell.swift
//  MoveTechnicalActivity
//
//  Created by Andres Santana on 18/05/20.
//  Copyright © 2020 Santana. All rights reserved.
//

import UIKit

class ThingCell: UITableViewCell {
	@IBOutlet weak var iconImageView: UIImageView!
	@IBOutlet weak var topLabel: UILabel!
	@IBOutlet weak var middleLabel: UILabel!
	@IBOutlet weak var middleRightLabel: UILabel!
	@IBOutlet weak var bottomLabel: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
		
		//Setup bottomLabel
		bottomLabel.textColor = .darkGray
		bottomLabel.numberOfLines = 0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
