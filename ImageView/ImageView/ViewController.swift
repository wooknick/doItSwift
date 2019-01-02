//
//  ViewController.swift
//  ImageView
//
//  Created by ParkMinwook on 27/12/2018.
//  Copyright © 2018 ParkMinwook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imageName = ["01.png", "02.png", "03.png", "04.png", "05.png", "06.png"]
    
    var img: UIImage!
    var imgIndex: Int = 0
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var backButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        img = UIImage(named: imageName[imgIndex])
        imgView.image = img
    }

    @IBAction func moveBack(_ sender: UIButton) {
        if(imgIndex > 0){
            imgIndex -= 1
            img = UIImage(named: imageName[imgIndex])
            imgView.image = img
        }
        
    }
    @IBAction func moveFoward(_ sender: UIButton) {
        if(imgIndex < 5){
            imgIndex += 1
            img = UIImage(named: imageName[imgIndex])
            imgView.image = img
        }
    }
}

