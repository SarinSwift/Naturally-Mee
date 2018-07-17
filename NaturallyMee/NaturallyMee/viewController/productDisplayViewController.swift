//
//  productDisplayViewController.swift
//  NaturallyMee
//
//  Created by Sarin Swift on 7/16/18.
//  Copyright © 2018 Sarin Swift. All rights reserved.
//

import Foundation
import UIKit

class ProductDisplayViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
 
    
    let items = ["Coconut Body Scrub", "Green Tea Cream", "Natural Hand Sanitizer", "Natural Soap"]

    
    let itemImages: [UIImage] = [
        UIImage(named:"coconutBodyScrub")!,
        UIImage(named:"greenTeaCream")!,
        UIImage(named:"HandSani")!,
        UIImage(named:"naturalSoap")!]
   
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            collectionView.dataSource = self
            collectionView.delegate = self
            
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.productLabel.text = items[indexPath.item]
        cell.productImage.image = itemImages[indexPath.item]
      
        
        return cell
    }
}
