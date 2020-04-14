//
//  RaffleUITableViewCell.swift
//  Raffle
//
//  Created by StarWen on 14/4/20.
//  Copyright © 2020 StarWen. All rights reserved.
//

import UIKit

class RaffleUITableViewCell: UITableViewCell {

    @IBOutlet var nameLable: UILabel!
    @IBOutlet var priceLable: UILabel!
    @IBOutlet var descriptionLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
