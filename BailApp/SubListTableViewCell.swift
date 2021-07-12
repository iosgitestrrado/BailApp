//
//  SubListTableViewCell.swift
//  BailApp
//
//  Created by Monish M S on 02/05/18.
//  Copyright © 2018 Monish M S. All rights reserved.
//

import UIKit

class SubListTableViewCell: UITableViewCell {
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var date: UILabel!

    @IBOutlet weak var DetailsBtn: UIButton!
    @IBOutlet weak var DonateBtn: UIButton!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
