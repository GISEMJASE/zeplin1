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
    @IBOutlet weak var tbleviewInicial: UITableView!{
        didSet{
            self.tbleviewInicial.delegate = self
            self.tbleviewInicial.dataSource = self
            self.tbleviewInicial.register(UINib(nibName: "BigTableViewCell", bundle: .main), forCellReuseIdentifier: "BigTableViewCell")
        }
    }
    
    
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
        self.setUpCollectonview()
    }
    
    func setUpCollectonview(){
        cvTop.delegate = self
        cvTop.dataSource = self
        cvTop.tag = 777
        cvTop.register(Top3CollectionViewCell.nib, forCellWithReuseIdentifier: Top3CollectionViewCell.identifier)
        
//        cvBottom.delegate = self
//        cvBottom.dataSource = self
//        cvBottom.tag = 999
//        cvBottom.register(Top3CollectionViewCell.nib, forCellWithReuseIdentifier: Top3CollectionViewCell.identifier)
        
    }
    
  
    
}


