//
//  YogaViewController.swift
//  Study Break
//
//  Created by Apple on 7/14/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class YogaViewController: UIViewController {

    @IBOutlet weak var firstVideo: UITextView!
    
    @IBOutlet weak var secondVideo: UITextView!
    
    @IBOutlet weak var thirdVideo: UITextView!
    
    @IBOutlet weak var videoFour: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let one =
              "https://www.youtube.com/watch?v=VpW33Celubg&list=PLbxIiTPil1fN3Y3agCOutu9BBlseQYHNJ&index=2&t=0s/"
              let attributedString = NSMutableAttributedString(string: "Click here for the first video fo our relaxing yoga and meditation playlist!")
              let text = "Click here for the first video fo our relaxing yoga and meditation playlist!"
              let str = NSString(string: text)
              let theRange = str.range(of: "Click here for the first video fo our relaxing yoga and meditation playlist!")
              attributedString.addAttribute(.link, value: one, range: theRange)
              
        firstVideo.attributedText = attributedString
   
            let two =
            "https://www.youtube.com/watch?v=X3-gKPNyrTA&list=PLbxIiTPil1fN3Y3agCOutu9BBlseQYHNJ&index=2/"
            let attributedStrings = NSMutableAttributedString(string: "Click here for the second video from our relaxing yoga and meditation playlist!")
            let texts = "Click here for the second video fo our relaxing yoga and meditation playlist!"
            let strs = NSString(string: texts)
            let theRanges = strs.range(of: "Click here for the second video fo our relaxing yoga and meditation playlist!")
            attributedStrings.addAttribute(.link, value: two, range: theRanges)
        
        secondVideo.attributedText = attributedStrings
        
   
                 let three =
                 "https://www.youtube.com/watch?v=ZToicYcHIOU&list=PLbxIiTPil1fN3Y3agCOutu9BBlseQYHNJ&index=3/"
                 let attributedStringd = NSMutableAttributedString(string: "Click here for the fourth video from our relaxing yoga and meditation playlist!")
                 let textd = "Click here for the fourth video fo our relaxing yoga and meditation playlist!"
                 let strd = NSString(string: textd)
                 let theRanged = strd.range(of: "Click here for the fourth video fo our relaxing yoga and meditation playlist!")
                 attributedStringd.addAttribute(.link, value: three, range: theRanged)
                 
        thirdVideo.attributedText = attributedStringd
    

           let four =
           "https://www.youtube.com/watch?v=Xl_B45DpMLU&list=PLbxIiTPil1fN3Y3agCOutu9BBlseQYHNJ&index=4/"
           let attributedStringh = NSMutableAttributedString(string: "Click here for the third video from our relaxing yoga and meditation playlist!")
           let texth = "Click here for the third video fo our relaxing yoga and meditation playlist!"
           let strh = NSString(string: texth)
           let theRangeh = strh.range(of: "Click here for the third video fo our relaxing yoga and meditation playlist!")
           attributedStringh.addAttribute(.link, value: four, range: theRangeh)
           
  videoFour.attributedText = attributedStringh
    
    
    }

    
}
