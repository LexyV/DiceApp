//
//  ViewController.swift
//  Dicee App
//
//  Created by Lexy on 5/4/18.
//  Copyright © 2018 Alexys Vanderford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0;
    var randomDiceIndex2 : Int = 0;
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"];
    
    @IBOutlet weak var diceLeft: UIImageView!
    @IBOutlet weak var diceRight: UIImageView!
    
    //only triggered when app first opens
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages();
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func rollButton(_ sender: UIButton) {
       
        updateDiceImages();
        
    }
    
    func updateDiceImages() {
        
        //get the random number
        randomDiceIndex1 = Int(arc4random_uniform(6));
        randomDiceIndex2 = Int(arc4random_uniform(6));
        
        //show the random number on individual dice
        diceLeft.image = UIImage(named: diceArray[randomDiceIndex1]);
        diceRight.image = UIImage(named: diceArray[randomDiceIndex2]);
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDiceImages();
        
    }
}



