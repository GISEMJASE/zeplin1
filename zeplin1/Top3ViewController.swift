//
//  Top3ViewController.swift
//  zeplin1
//
//  Created by Sem on 26/04/23.
//

import UIKit

class Top3ViewController: UIViewController {
    
    @IBOutlet weak var cvTop: UICollectionView!
    @IBOutlet weak var cvBottom: UICollectionView!
    @IBOutlet weak var tbleviewInicial: UITableView!
    
    
    let cateDate: DataCate = DataCate()
    var arreElementosTop: [Categories] = []
    var arrElementosBottom: [Categories] = []
    let categoria: DataCate = DataCate()
    let arrPrin: [String] = ["La hora del te","Coffee Breack","La hora loca"]
    let arrPrinImages: [String] = ["prin1", "prin2", "prin3"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.arreElementosTop = categoria.setCateg()
        print("\n\n\n  arreCatego --->  \(arreElementosTop.count)    \n\n\n")
        self.setUpCellOnViews()
    }
    
    func setUpCellOnViews(){

        self.cvTop.delegate = self
        self.cvTop.dataSource = self
        self.cvTop.tag = 777
        self.cvTop.register(Top3CollectionViewCell.nib, forCellWithReuseIdentifier: Top3CollectionViewCell.identifier)

        self.tbleviewInicial.delegate = self
        self.tbleviewInicial.dataSource = self
        self.tbleviewInicial.register(BigTableViewCell.nib, forCellReuseIdentifier: BigTableViewCell.identifier)
        
        cvBottom.delegate = self
        cvBottom.dataSource = self
        cvBottom.tag = 999
        cvBottom.register(Top3CollectionViewCell.nib, forCellWithReuseIdentifier: Top3CollectionViewCell.identifier)
        
    }
    
  
    
}


