//
//  ViewController.swift
//  tableViewCollection assignment
//
//  Created by VIJAY Mac on 21/09/22.
//

import UIKit

class ViewController: UIViewController {

//    ARRAAY OF IMAGES.
    var images = [UIImage(named: "Burger"),UIImage(named: "Creamymacroni"),UIImage(named: "Frenchfries"),UIImage(named: "Grilledsandwich"),UIImage(named: "Hakkanoodles"),UIImage(named: "Momos"),UIImage(named: "Pasta"),UIImage(named: "Burger"),UIImage(named: "kadhai pneer"),UIImage(named: "kande pohe"),UIImage(named: "palak paneer"),UIImage(named: "pav vada"),UIImage(named: "plain-dosa"),UIImage(named: "samber vada"),UIImage(named: "samosa"),UIImage(named: "spicy mix food"),UIImage(named: "veg manchurian"),UIImage(named: "VegPulao")]
   
//     ARRAY OF NAMES.
    var names = ["Burger","Creamymacroni","Frenchfries","Grilledsandwich","Hakkanoodles","Momos","Pasta","burger","kadhai paneer","kande pohe","palak paneer","pav vada","plain-dosa","samber vada","samosa","spicy mix food","Vveg manchurian"]
    
//   OUTLET OF THE UICOLLECTION VIEW.
    @IBOutlet weak var Collectionviewtable: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Collectionviewtable.dataSource = self
        Collectionviewtable.delegate = self
        
        
        
    }

}

//MARK: EXTENSION FOR THE UICOLLECTION VIEW DATASOURSE.
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let CollectionViewCell = self.Collectionviewtable.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)as! CollectionViewCell
        
        CollectionViewCell.imageView?.image = images[indexPath.row]
        CollectionViewCell.labelname?.text = names[indexPath.row]
        CollectionViewCell.backgroundColor = .systemMint
        CollectionViewCell.layer.opacity = 1
        CollectionViewCell.layer.cornerRadius = 4
        CollectionViewCell.layer.borderWidth = 1.50
        CollectionViewCell.sizeToFit().self

        return CollectionViewCell
        
    }
    
}

//MARK: THIS IS THE EXTENSION FOR UICOLLECTION VIEW DELEGETE FLOW LAYOUT.
extension ViewController: UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let collectionWidth = collectionView.bounds.width
            return CGSize(width: collectionWidth/2, height: collectionWidth/1)
            
        }
    
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return -80
            
        }
    
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return -160
            
        }
    
}
