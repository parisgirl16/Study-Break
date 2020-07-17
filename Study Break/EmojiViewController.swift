//
//  EmojiViewController.swift
//  Study Break
//
//  Created by Apple on 7/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {

    @IBOutlet weak var bigSmile: UILabel!
    
    @IBOutlet weak var smile: UILabel!
    
    @IBOutlet weak var silly: UILabel!
    
    @IBOutlet weak var meh: UILabel!
    
    @IBOutlet weak var angry: UILabel!
   
    @IBOutlet weak var cry: UILabel!
    
    @IBOutlet weak var sleepy: UILabel!
    
    @IBOutlet weak var sick: UILabel!
    
    @IBOutlet weak var poopy: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bigSmile.isHidden = true
        smile.isHidden = true
        silly.isHidden = true
        meh.isHidden = true
        angry.isHidden = true
        cry.isHidden = true
        sleepy.isHidden = true
        sick.isHidden = true
        poopy.isHidden = true
        
    }
    
    @IBAction func bigSmiles(_ sender: UIButton) {
    
            bigSmile.isHidden = false
            smile.isHidden = true
            silly.isHidden = true
            meh.isHidden = true
            angry.isHidden = true
            cry.isHidden = true
            sleepy.isHidden = true
            sick.isHidden = true
            poopy.isHidden = true
    
    }
    
    
    @IBAction func smiles(_ sender: UIButton) {
   
            bigSmile.isHidden = true
            smile.isHidden = false
            silly.isHidden = true
            meh.isHidden = true
            angry.isHidden = true
            cry.isHidden = true
            sleepy.isHidden = true
            sick.isHidden = true
            poopy.isHidden = true
    
    }
  
    @IBAction func sillies(_ sender: UIButton) {
    
            bigSmile.isHidden = true
            smile.isHidden = true
            silly.isHidden = false
            meh.isHidden = true
            angry.isHidden = true
            cry.isHidden = true
            sleepy.isHidden = true
            sick.isHidden = true
            poopy.isHidden = true
    
    }
    
    @IBAction func mehs(_ sender: UIButton) {
   
            bigSmile.isHidden = true
            smile.isHidden = true
            silly.isHidden = true
            meh.isHidden = false
            angry.isHidden = true
            cry.isHidden = true
            sleepy.isHidden = true
            sick.isHidden = true
            poopy.isHidden = true
    
    }
    
    @IBAction func angrys(_ sender: UIButton) {
    
            bigSmile.isHidden = true
            smile.isHidden = true
            silly.isHidden = true
            meh.isHidden = true
            angry.isHidden = false
            cry.isHidden = true
            sleepy.isHidden = true
            sick.isHidden = true
            poopy.isHidden = true
    
    }
    
    @IBAction func cries(_ sender: UIButton) {
    
            bigSmile.isHidden = true
            smile.isHidden = true
            silly.isHidden = true
            meh.isHidden = true
            angry.isHidden = true
            cry.isHidden = false
            sleepy.isHidden = true
            sick.isHidden = true
            poopy.isHidden = true
        
    }
    
    @IBAction func sleepys(_ sender: UIButton) {
    
            bigSmile.isHidden = true
            smile.isHidden = true
            silly.isHidden = true
            meh.isHidden = true
            angry.isHidden = true
            cry.isHidden = true
            sleepy.isHidden = false
            sick.isHidden = true
            poopy.isHidden = true
    
    }
    
    @IBAction func sicks(_ sender: UIButton) {
 
            bigSmile.isHidden = true
            smile.isHidden = true
            silly.isHidden = true
            meh.isHidden = true
            angry.isHidden = true
            cry.isHidden = true
            sleepy.isHidden = true
            sick.isHidden = false
            poopy.isHidden = true
    
    }
    
    @IBAction func poopies(_ sender: UIButton) {
  
            bigSmile.isHidden = true
            smile.isHidden = true
            silly.isHidden = true
            meh.isHidden = true
            angry.isHidden = true
            cry.isHidden = true
            sleepy.isHidden = true
            sick.isHidden = true
            poopy.isHidden = false
    
    }
   

}
