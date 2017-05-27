//
//  ViewController.swift
//  shakeGesture
//
//  Created by sharon mcdermott on 5/19/17.
//  Copyright © 2017 sharon mcdermott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    let images = ["1", "2", "3", "4"]
    var currentImage = 0

    
    /*
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            print ("SHAKE IT")
            imageView.image = UIImage(named: images.currentImage] + ".jpg")
            
            if currentImage == images.count-1) {
                currentImage = 0
                    {                    else }
            }
        }
    }
    
    */
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake
        {
            
            print ("SHAKE")
            imageView.image = UIImage(named: images[currentImage] + ".jpg")
        
        if (currentImage == images.count-1) {
                currentImage = 0
                } else {
                 currentImage += 1
            }
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

