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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath)
        
        let row = indexPath.row
        
        let computerNameLabel = cell.viewWithTag(1) as! UILabel
        computerNameLabel.text = computers[row]

        let modelLabel = cell.viewWithTag(2) as! UILabel
        if row < 6 {
            modelLabel.text = "Desktop"
        }
        else{
            modelLabel.text = "Portable"
        }
        
        let imageName = computers[row]
        let fullImageName = imageName.appending(".png")
        let myImage = UIImage(named:fullImageName)
        let computerImageView = cell.viewWithTag(3) as! UIImageView
        computerImageView.image = myImage
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

