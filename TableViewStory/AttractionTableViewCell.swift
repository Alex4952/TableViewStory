//
//  AttractionTableViewCell.swift
//  TableViewStory
//
//  Created by GIJU HONG on 11/5/15.
//  Copyright © 2015 GIJU HONG. All rights reserved.
//

import UIKit

class AttractionTableViewCell: UITableViewCell {

	@IBOutlet var attractionImage: UIImageView!
	@IBOutlet var attractionLabel: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
