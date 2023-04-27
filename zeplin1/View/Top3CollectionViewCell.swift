//
//  Top3CollectionViewCell.swift
//  zeplin1
//
//  Created by Sem on 26/04/23.
//

import UIKit

class Top3CollectionViewCell: UICollectionViewCell {
    
    //MARK: - O U T L E T S
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblrate: UILabel!
    @IBOutlet weak var lbltimer: UILabel!
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func setUpCollectionCell(categoria: Categories) {
        lblTitle.text = categoria.title
        lblrate.text = categoria.rate
        lbltimer.text = categoria.timerr
        img1.image = UIImage(named: categoria.images?[0] ?? "")
        img2.image = UIImage(named: categoria.images?[1] ?? "")
        img3.image = UIImage(named: categoria.images?[2] ?? "")
        img4.image = UIImage(named: categoria.images?[3] ?? "")
    }

}
