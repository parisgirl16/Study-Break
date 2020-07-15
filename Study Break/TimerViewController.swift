//
//  TimerViewController.swift
//  Study Break
//
//  Created by Apple on 7/14/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import Foundation

class TimerViewController: UIViewController {

    @IBOutlet weak var countdown: UILabel!
    //declare empty timer variable
    var timer = Timer()
    var secondsLeft = 60
    var minutesLeft = 29
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            
    }

    @IBAction func startCountdown(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(startTimer), userInfo: nil, repeats: true)
        timer.tolerance = 0.3
        RunLoop.current.add(timer, forMode: RunLoop.Mode.common)
    }
    
    @objc func startTimer() {
        print("Timer started.")
        
        secondsLeft -= 1
        
        print(minutesLeft, secondsLeft)
        
        if secondsLeft<10 {
            self.countdown.text = "\(minutesLeft):0\(secondsLeft)"
        } else {
            self.countdown.text = "\(minutesLeft):\(secondsLeft)"
        }
        
        
        if secondsLeft == 0 {
            minutesLeft-=1
            secondsLeft = 59
        }
        
        if minutesLeft==0 {
            timer.invalidate()
            print("Timer Done")
            self.countdown.text = "Time's Up!"
        }
    }
    
}

