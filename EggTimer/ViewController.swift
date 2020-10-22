//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var eggTitle: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    let eggTimes = ["Soft": 5*60, "Medium": 7*60, "Hard": 12*60]
    var secondsRemaining: Int = 60
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        progressBar.progress = 1.0
        timer.invalidate()
        let hardness = sender.currentTitle!
        
        /* MY SOLUTION
         if hardness == "Soft" {
         print(eggTimes["Soft"]!)
         } else if hardness == "Medium" {
         print(eggTimes["Medium"]!)
         } else if hardness == "Hard" {
         print(eggTimes["Hard"]!)
         }*/
        
        //ANGELA'S SOLUTION
        //print(eggTimes[hardness]!)
        
        secondsRemaining = eggTimes[hardness]!
        
        //MY SOLUTION
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.secondsRemaining > 0 {
                print ("\(self.secondsRemaining) seconds.")
                self.secondsRemaining -= 1
            } else {
                self.timer.invalidate()
                self.eggTitle.text = "Done!"
            }
        }
        
        
        //ANGELA'S SOLUTION
        //timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
    }
    /*
    @objc func fireTimer() {
        if secondsRemaining > 0 {
        print("\(self.secondsRemaining) seconds.")
        self.secondsRemaining -= 1
        }
    }*/
}
