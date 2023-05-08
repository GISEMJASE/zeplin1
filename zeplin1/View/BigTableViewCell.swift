//
//  BigTableViewCell.swift
//  zeplin1
//
//  Created by Sem on 02/05/23.
//

import UIKit

class BigTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imIMAGE: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imIMAGE.layer.cornerRadius = 3
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
