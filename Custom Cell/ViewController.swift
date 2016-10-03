//
//  ViewController.swift
//  Custom Cell
//
//  Created by Tywin Lannister on 03/10/16.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var computers = [String] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        computers = ["Mac Plus", "Bondi iMac", "iMac Flat Panel", "Mac Pro", "Mac Mini", "iMac Aluminium", "PowerBook 100", "PowerBook Duo", "PowerBook G4", "White MacBook", "MacBook 13", "MacBook Air"]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return computers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! MyTableViewCell
        
        let row = indexPath.row
        
        cell.nameLabel.text = computers[row]
        if row < 6 {
            cell.typeLabel.text = "Desktop"
            }
        else {
            cell.typeLabel.text = "Portable"
        }
        
        let imageName = computers [row]
        let fullImageName = imageName.appending(".png")
        let myImage = UIImage(named: fullImageName)
        cell.computerImage.image = myImage
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

