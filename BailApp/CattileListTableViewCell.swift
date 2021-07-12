//
//  CattileListTableViewCell.swift
//  farminno
//
//  Created by Ajesh Mac Mini2 on 10/13/17.
//  Copyright © 2017 Ajesh Mac Mini2. All rights reserved.
//

import UIKit

class CattileListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var gender: UILabel!
    @IBOutlet weak var breed: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var remarks: UILabel!
    
    @IBOutlet weak var showCount: UILabel!
    @IBOutlet weak var deleteBtn: UIButton!
    @IBOutlet weak var EditBtn: UIButton!
     @IBOutlet weak var HEADviewHeight: NSLayoutConstraint!
     @IBOutlet weak var nameHeight: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
