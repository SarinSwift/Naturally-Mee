//
//  productDisplayViewController.swift
//  NaturallyMee
//
//  Created by Sarin Swift on 7/16/18.
//  Copyright © 2018 Sarin Swift. All rights reserved.
//

import Foundation
import UIKit

class ProductDisplayViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
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
            
            func setUpNavigationBarItems ()
            
//        let width = (view.frame.size.width - 10 )/2
//            let layout = collectionView.collectionViewLayout
//            layout.itemSize = CGSize(width: (self.collectionView.frame.size.width/2.0), height: (self.collectionView.frame.size.height/2))
            
            let collectionViewLayout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
            collectionViewLayout.minimumLineSpacing = 10
            collectionViewLayout.minimumInteritemSpacing = 0
            collectionViewLayout.itemSize = CGSize(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.width/2)
            
//            if let layout = self.collectionView.collectionViewLayout as? UICollectionViewFlowLayout{
//
//                // set the section insets as you required..
//                layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
//                // set the line spacing according to your requirement
//            }
        
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
        //cell.layer.shadowColor = CGSize(width: 0, height: -5)
       
        
      
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        let screenSize: CGRect = UIScreen.main.bounds
//
//        // add the required height, if you want to fill the whole screen it should be 'screenSize.height / 2'
//        return CGSize(width: screenSize.width / 2, height: 200)
//
//    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected")
    }
}
















