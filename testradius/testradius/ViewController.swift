//
//  ViewController.swift
//  testradius
//
//  Created by 孫凡欣 on 2023/04/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userField: UITextField!
    
    @IBOutlet weak var buttonField: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userField.layer.cornerRadius = 22
        buttonField.layer.cornerRadius = 22
        
        // Do any additional setup after loading the view.
    }


}

