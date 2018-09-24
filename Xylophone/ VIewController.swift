//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController{
    
    let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        // Load "mysoundname.wav"
        
        if let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            // Play
            
        AudioServicesPlaySystemSound(mySound);
        }
        
    }
    
  

}

