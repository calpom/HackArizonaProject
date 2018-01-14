//
//  PerscriptionTableViewCell.swift
//  HackArizonaProject
//
//  Created by Cody Joseph Walker on 1/12/18.
//  Copyright © 2018 CalebGrantCody. All rights reserved.
//

import UIKit

class PerscriptionTableViewCell: UITableViewCell {
    
    // the data for each cell
    private var theName = ""
    private var arrayOfDays = [String]()
    private var currentNumberOfPills = 0
    private var theNotes = ""
    private var theTime = ""
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
