//
//  ViewController.swift
//  Magic Eightball
//
//  Created by Matthew W P Barber on 5/14/19.
//  Copyright © 2019 Matthew W P Barber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray: Array = [ "ball1", "ball2", "ball3", "ball4", "ball5" ]
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeBallImage()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeBallImage()
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        changeBallImage()
    }
    
    func changeBallImage () {
        
        let random1 = Int.random( in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[random1])
    }
    
}

