//
//  ViewController.swift
//  CustomTableView
//
//  Created by 孫凡欣 on 2023/04/17.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var table: UITableView!
    
    struct Photo {
        let title: String
        let imageName: String
    }
    
    let data: [Photo] = [
        Photo(title: "楽しそう", imageName: "01"),
        Photo(title: "かわいい", imageName: "02"),
        Photo(title: "兄弟", imageName: "03"),
        Photo(title: "チーくん", imageName: "04"),
        Photo(title: "親子", imageName: "05")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        
//        table.rowHeight = 50
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Photo = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = Photo.title
        cell.iconImageView.image = UIImage(named: Photo.imageName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) ->
        CGFloat {
            return 140
        }
    }




