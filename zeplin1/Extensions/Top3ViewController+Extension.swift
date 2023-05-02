//
//  Top3ViewController+Extension.swift
//  zeplin1
//
//  Created by Sem on 02/05/23.
//

import UIKit

extension Top3ViewController: UICollectionViewDataSource,  UICollectionViewDelegate, UITableViewDelegate, UITableViewDataSource {

    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionView.tag == 777 ? arreElementosTop.count : arreElementosTop.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView.tag == 777 {
            let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: Top3CollectionViewCell.identifier, for: indexPath) as? Top3CollectionViewCell ?? Top3CollectionViewCell()
            cCell.setUpCollectionCell(categoria: arreElementosTop[indexPath.row])
            return cCell
        }else {
            //AQUI SE PONE LA CONDIFURACION DE EEL SEGUNDO COLLECTION VIEW CELL
            let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: Top3CollectionViewCell.identifier, for: indexPath) as? Top3CollectionViewCell ?? Top3CollectionViewCell()
            cCell.setUpCollectionCell(categoria: arreElementosTop[indexPath.row])
            
            return cCell
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPrin.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BigTableViewCell", for: indexPath) as? BigTableViewCell ?? BigTableViewCell()
 
        cell.lblTitle.text = arrPrin[indexPath.row]
        cell.imIMAGE.image = UIImage(named: arrPrinImages[indexPath.row])
        return cell
        
    }
    
}
