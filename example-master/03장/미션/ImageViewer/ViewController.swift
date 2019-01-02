//
//  ViewController.swift
//  ImageViewer
//
//  Created by Ho-Jeong Song on 2017. 10. 2..
//  Copyright © 2017년 Ho-Jeong Song. All rights reserved.
//

import UIKit

var numImage = 0

class ViewController: UIViewController {
    @IBOutlet var imgGallery: UIImageView!
    
    var imageName = [ "01.png", "02.png", "03.png", "04.png", "05.png", "06.png" ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imgGallery.image = UIImage(named:imageName[0])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPrevImage(_ sender: UIButton) {
        numImage = numImage - 1
        if (numImage<0) {
            numImage = imageName.count-1
        }
        
        imgGallery.image = UIImage(named:imageName[numImage])
    }
    
    @IBAction func btnNextImage(_ sender: UIButton) {
        numImage = numImage + 1
        if (numImage>=imageName.count) {
            numImage = 0
        }
        
        imgGallery.image = UIImage(named:imageName[numImage])
    }
}

