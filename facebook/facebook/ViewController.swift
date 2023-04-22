//
//  ViewController.swift
//  facebook
//
//  Created by 孫凡欣 on 2023/04/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aikonView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
//        let imageView = UIImageView(image: UIImage(named: "aikon"))
        aikonView.layer.cornerRadius = 62
        aikonView.layer.masksToBounds = false
        
        
//        let layer = CALayer()
//        layer.frame = aikonView.frame
//        aikonView.layer.addSublayer(layer)
        
        aikonView.layer.shadowColor = UIColor.black.cgColor
        aikonView.layer.shadowOpacity = 1.5
        aikonView.layer.shadowRadius = 5
        aikonView.layer.shadowOffset = CGSize(width: 0.8, height: 2)

//        layer.frame = CGRect(x: 0, y: 0, width: aikonView.frame.size.width, height: aikonView.frame.size.height)


        
        
        
    }


}

