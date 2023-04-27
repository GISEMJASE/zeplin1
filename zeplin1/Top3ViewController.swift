//
//  Top3ViewController.swift
//  zeplin1
//
//  Created by Sem on 26/04/23.
//

import UIKit

class Top3ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionView.tag == 777 ? arrElementosTop.count : arrElementosTop.count
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView.tag == 777 {
            let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: Top3CollectionViewCell.identifier, for: indexPath) as? Top3CollectionViewCell ?? Top3CollectionViewCell()
            
            let cat = Categories()
            cat.title = "Titulo Asombroso"
            cat.rate = "Subtitulo no tan asombroso"
            cat.images?[0] = "imagenuno"
            cat.images?[1] = "imagenuno"
            cat.images?[2] = "imagenuno"
            cat.images?[3] = "imagenuno"
            
            
            cCell.setUpCollectionCell(categoria: cat)
            
            
            return cCell
        }else {
            //AQUI SE PONE LA CONDIFURACION DE EEL SEGUNDO COLLECTION VIEW CELL
            let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: Top3CollectionViewCell.identifier, for: indexPath) as? Top3CollectionViewCell ?? Top3CollectionViewCell()
            
            let cat = Categories()
            cat.title = "Titulo Asombroso"
            cat.rate = "Subtitulo no tan asombroso"
            cat.images?[0] = "imagenuno"
            cat.images?[1] = "imagenuno"
            cat.images?[2] = "imagenuno"
            cat.images?[3] = "imagenuno"
            
            
            cCell.setUpCollectionCell(categoria: cat)
            
            return cCell
        }
    }
    
    

    @IBOutlet weak var cvTop: UICollectionView!
    
    let arrElementosTop: [String] = ["Chinese","German","Fitness","Healty","Enjoy&Fat"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectonview()

        // Do any additional setup after loading the view.
    }
    func setUpCollectonview(){
        self.cvTop.delegate = self
        self.cvTop.dataSource = self
        self.cvTop.tag = 777
        self.cvTop.register(Top3CollectionViewCell.nib, forCellWithReuseIdentifier: Top3CollectionViewCell.identifier)


    }
   
        
       
        
        
        
        
    
    
    
    
    
    }

    
