//
//  ViewController.swift
//  SB_Demo
//
//  Created by user on 24/10/2019.
//  Copyright © 2019 Artem Ulko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ShowSecondController", sender: nil)
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? SecondViewController, segue.identifier == "ShowSecondController" {
            controller.text = "Hello, world!"
        }
    }    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

