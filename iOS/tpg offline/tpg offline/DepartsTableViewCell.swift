//
//  DepartsTableViewCell.swift
//  tpg offline
//
//  Created by Alice on 17/11/2015.
//  Copyright © 2015 dacostafaro. All rights reserved.
//

import UIKit

class DepartsTableViewCell: UITableViewCell {
    @IBOutlet weak var pictoLigne: UILabel!
    @IBOutlet weak var labelDirection: UILabel!
    @IBOutlet weak var labelTempsRestant: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
                
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
