//
//  productDetailViewController.swift
//  NaturallyMee
//
//  Created by Sarin Swift on 7/16/18.
//  Copyright © 2018 Sarin Swift. All rights reserved.
//
//
import Foundation
import UIKit

class productDetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func buyButtonTapped(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "https://www.100percentpure.com/collections/body-scrub/products/coconut-body-scrub")! as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func buyButtonTapped1(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "https://www.100percentpure.com/collections/moisturizers/products/green-tea-egcg-concentrate-cream?variant=1730069692440")! as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func buyButtonTapped2(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "http://naturallymee.com")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func buyButtonTapped3(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "http://naturallymee.com")! as URL, options: [:], completionHandler: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    
}

