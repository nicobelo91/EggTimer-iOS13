//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

       let eggTimes = ["Soft": 5*60, "Medium": 7*60, "Hard": 12*60]
       
       var secondsRemaining: Int = 0
       
       @IBAction func hardnessSelected(_ sender: UIButton) {
           
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
           print(eggTimes[hardness]!)
           secondsRemaining = eggTimes[hardness]!
           
           Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
               if self.secondsRemaining > 0 {
                   print ("\(self.secondsRemaining) seconds")
                   self.secondsRemaining -= 1
               }
               
           }
       }
    
}
