//
//  ViewController.swift
//  Study Break
//
//  Created by Apple on 7/14/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var quotes =
      ["Make each day your masterpiece. --John Wooden",
       "The difference between ordinary and extraordinary is that little extra. --Jimmy Johnson",
       "All our dreams can come true--if we have the courage to pursue them. --Walt Disney",
       "Always be a first-rate version of yourself, instead of a second-rate version of somebody else. --Judy Garland",
       "If you cannot do great things, do small things in a great way. --Napoleon Hill",
       "If you cannot do great things, do small things in a great way. --Napoleon Hill",
       "Your time is limited, so don't waste it living someone else's life. --Steve Jobs",
       "The only way to do great work is to love what you do. --Steve Jobs",
       "The only way to do great work is to love what you do. --Steve Jobs",
       "The only way to do great work is to love what you do. --Steve Jobs",
       "Too many of us are not living our dreams because we are living our fears. --Les Brown",
       "Limitations live only in our minds. But if we use our imaginations, our possibilities become limitless. --Jamie Paolinetti",
       "It does not matter how slowly you go as long as you do not stop. --Confucius",
       "Life is what we make it, always has been, always will be. --Grandma Moses",
       "The journey of a thousand miles begins with one step. --Lao Tzu",
       "A year from now you may wish you had started today. --Karen Lamb",
       "You have as many hours in a day as Beyonce. --Unknown",
       "If there is no struggle, there is no progress.-—Frederick Douglass",
       "Develop success from failures. Discouragement and failure are two of the surest stepping stones to success. -—Dale Carnegie",
       "Courage is like a muscle. We strengthen it by use. -—Ruth Gordo",
       "More is lost by indecision than wrong decision. -—Marcus Tullius Cicero",
       "I never look back, darling. It distracts from the now. -—Edna Mode",
       "The reason we struggle with insecurity is because we compare our behind-the-scenes with everyone else’s highlight reel. -—Steve Furtick",
       "Somewhere, something incredible is waiting to be known. -—Carl Sagan",
       "You carry the passport to your own happiness. -—Diane von Furstenberg",
       "Never let success get to your head and never let failure get to your heart. -—Drake",
       "The most difficult thing is the decision to act, the rest is merely tenacity. --Amelia Earhart",
       "I’d rather regret the things I’ve done than regret the things I haven’t done. -—Lucille Ball",
       "I will not lose, for even in defeat, there’s a valuable lesson learned, so it evens up for me. -—Jay-Z",
       "You can never leave footprints that last if you are always walking on tiptoe. -—Leymah Gbowee",
       "If you don’t like the road you’re walking, start paving another one. -—Dolly Parton",
       "Some people want it to happen, some wish it would happen, others make it happen. -—Michael Jordan",
       "When everything seems to be going against you, remember that the airplane takes off against the wind, not with it. -–Henry Ford",
       "Build your own dreams, or someone else will hire you to build theirs. -–Farrah Gray",
       "I would rather die of passion than of boredom. -–Vincent van Gogh",
      "Rise up, start fresh see the bright opportunity in each day. -–Unknown",
      "Challenges are what make life interesting and overcoming them is what makes life meaningful. -–Joshua J. Marine",
      "If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on.” --Sheryl Sandberg",
      "Everything has beauty, but not everyone can see. --Confucius",
      "Winning isn’t everything, but wanting to win is. –-Vince Lombardi",
      "Just know, when you truly want success, you’ll never give up on it. No matter how bad the situation may get. –-Unknown",
      "I am thankful for all of those who said NO to me. Its because of them I’m doing it myself.” –-Albert Einstein",
      "When you feel like giving up, remember why you held on for so long in the first place. --Unknown",
      "What lies behind us and what lies before us are tiny matters compared to what lies within us. --Henry S. Haskins",
      "Challenge yourself with something you know you could never do, and what you’ll find is that you can overcome anything. –-Unknown",
      "The best way to predict the future is to invent it. –-Alan Kay",
      "You make a living by what you get; you make a life by what you give. --Winston Churchill",
      "You must be the change you wish to see in the world. --Gandhi",
      "Keep your face to the sunshine and you can never see the shadow. --Helen Keller",
      "The best way out is always through. --Robert Frost"]
    
    
    @IBOutlet weak var morningQuotes: UILabel!
    
    func pickQuote() -> String {
        let random = Int.random(in: 1...quotes.count-1)
        print(random)
        let quote = quotes[random]
        print(quote)
        self.morningQuotes.text = quote
        return quote
    }

}

