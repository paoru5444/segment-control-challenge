//
//  CustomTableViewCell.swift
//  segment-control-challenge
//
//  Created by Paulo Roberto on 02/05/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var customLabel: UILabel!
    @IBOutlet weak var customImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func set(name: String, img: String) {
        customLabel.text = name
        customImage.image = UIImage(named: img)
    }

}
