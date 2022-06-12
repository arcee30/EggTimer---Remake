//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var secondsRemaining = 60
    var timer = Timer()
    @IBOutlet weak var ProgressBar: UIProgressView!
    @IBAction func eggPress(_ sender: UIButton) {
        let egg = sender.currentTitle!
        timer.invalidate()
        let times = ["Soft": 5, "Medium": 7, "Hard": 12]
       // print(times[egg]!)
        // display the first pose
        
        secondsRemaining = times[egg]!
       var interval = Float(1.0/Double(times[egg]!))
      
       timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.secondsRemaining > 0 {
                print ("\(self.secondsRemaining) seconds")
                print(1.0/Double(times[egg]!))
                self.ProgressBar.progress += interval
                self.secondsRemaining -= 1
            } else {
                Timer.invalidate()
                self.titleLabel.text = "Done!"
                self.ProgressBar.progress = 0.0
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.titleLabel.text = "How do you like your eggs?"
                }
            }
        }
  
    }
    
        override func viewDidLoad()
            {
                super.viewDidLoad()

                // initialise the display
                ProgressBar.progress = 0.0
            }
   
    


}
