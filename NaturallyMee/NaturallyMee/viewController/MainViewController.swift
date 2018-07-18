//
//  ViewController.swift
//  NaturallyMee
//
//  Created by Sarin Swift on 7/16/18.
//  Copyright © 2018 Sarin Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var viewProductsButton: UIButton!
    @IBOutlet weak var newUser: UIButton!
    
    @IBAction func viewProductsButtonTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "productDisplay", bundle: nil)
        let productViewController = storyboard.instantiateViewController(withIdentifier: "productDisplay")
        self.present(productViewController, animated: true, completion: nil)
        
    }
    @IBAction func secondViewProductsButtonTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "productDisplay", bundle: nil)
        let productViewController = storyboard.instantiateViewController(withIdentifier: "productDisplay")
        self.present(productViewController, animated: true, completion: nil)
    }
    
    
    @IBAction func newUserButtonTapped(_ sender: UIButton) {
        print("New User!!!")
    }
    
    
}
