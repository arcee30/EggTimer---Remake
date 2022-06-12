//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBAction func eggPress(_ sender: UIButton) {
        let egg = sender.currentTitle!
        let times = ["Soft": 5, "Medium": 7, "Hard": 12]
        var deez : [Float : String] = [5.0:"Deez"]
        print(deez[5.0]!)
 
        switch egg {
        case "Soft": print(String(times["Soft"]!) + " You're soft")
        case "Medium": print(String(times["Medium"]!) + " Boring")
        case "Hard": print(String(times["Hard"]!) + " Damn bro chill out")
        default: print("Error")
        }
  
    }
    
   
    
}
