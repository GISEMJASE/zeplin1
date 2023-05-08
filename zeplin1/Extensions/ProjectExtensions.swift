//  ProjectExtensions.swift
//  zeplin1
//  Created by Sem on 26/04/23.

import UIKit

//MARK: - UI · C O L L E C T I O N · V I E W · C E L L
extension UICollectionViewCell {
    ///Identifier nos ayudará a poder saber la identidad de nuestra celda, y usarla en cualquiera que herede de UICollectionViewCell
    class var identifier: String { return String(describing: self) }
    class var nib: UINib { return UINib(nibName: identifier, bundle: .main) }
}

//MARK: - UI · T A B L E · V I E W · C E L L
extension UITableViewCell {
    ///Identifier nos ayudará a poder saber la identidad de nuestra celda, y usarla en cualquiera que herede de UICollectionViewCell
    class var identifier: String { return String(describing: self) }
    class var nib: UINib { return UINib(nibName: identifier, bundle: .main) }
}
