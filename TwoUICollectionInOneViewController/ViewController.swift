//
//  ViewController.swift
//  TwoUICollectionInOneViewController
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 18/03/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var firstCollection: UICollectionView!
    @IBOutlet weak var secondCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstCollection.dataSource = self
        self.secondCollection.dataSource = self
        self.firstCollection.delegate = self
        self.secondCollection.delegate = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == secondCollection ){
            return 16
        }
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = firstCollection.dequeueReusableCell(withReuseIdentifier: "cellOne", for: indexPath) as! CollectionViewCellOne
        cell.backgroundColor = .red
        
        if (collectionView == secondCollection){
            let cellTwo = secondCollection.dequeueReusableCell(withReuseIdentifier: "cellTwo", for: indexPath) as! CollectionViewCellTwo
            cellTwo.backgroundColor = .green
            
            return cellTwo
        }
        
        return cell
    }

}

