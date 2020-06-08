//
//  ViewController.swift
//  EightBall
//
//  Created by Kathryn Tatum on 1/27/20.
//  Copyright © 2020 Kathryn Tatum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
//    var lastIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
        
        
        // Do any additional setup after loading the view.
    }


    @IBAction func pressButton(_ sender: Any) {
        let answerArray = ["It is certain", "Don't count on it", "My sources say no", "Cannot predict now", "My reply is yes", "You can count on it" ]
        
        var newPhrase = answerArray.randomElement()!
        
        //makes sure it doesn't repeat one after another directly
        while newPhrase == resultLabel.text {
            newPhrase = answerArray.randomElement()!
        }
        
        resultLabel.text = newPhrase
            
        
//        var randomIndex =  Int.random(in: 0..<answerArray.count)
        
//        repeat {
//            randomIndex = Int.random(in: 0..<answerArray.count)
//        } while lastIndex == randomIndex
        
//            while lastIndex == randomIndex {
//                randomIndex = Int.random(in: 0..<answerArray.count)
//            }
        
//        lastIndex = randomIndex
//        resultLabel.text = answerArray[lastIndex]
        
//        let randomValue = answerArray.randomElement()!
//        resultLabel.text = randomValue
    }
}

