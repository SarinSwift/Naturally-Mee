//
//  productDisplayViewController.swift
//  NaturallyMee
//
//  Created by Sarin Swift on 7/16/18.
//  Copyright © 2018 Sarin Swift. All rights reserved.
//

import Foundation
import UIKit

class productDisplayViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate
    
    
{
   
    let items = ["Coconut Body Scrub", "Green Tea Cream", "Natural Hand Sanitizer", "Natural Soap"]
    
    let productImages: [UIImage] = [
        UIImage(named:"coconutBodyScrub")!,
        UIImage(named:"greenTeaCream")!,
        UIImage(named:"naturalHandSanitizer")!,
        UIImage(named:"naturalSoap")!]
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: <#T##String#>, for: <#T##IndexPath#>)
    }
    
    
}
