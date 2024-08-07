//
//  ViewController.swift
//  TP01_DiceRoller
//
//  Created by ISC Lab's user on 23.09.21.
//

import UIKit

class ViewController: UIViewController {

    let isTwoDices = true;
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func roll(_ sender: Any) {
        switch Int.random(in: 1...6) {
        case 1:
            dice1.image = UIImage(named: "Dice1")
        case 2:
            dice1.image = UIImage(named: "Dice2")
        case 3:
            dice1.image = UIImage(named: "Dice3")
        case 4:
            dice1.image = UIImage(named: "Dice4")
        case 5:
            dice1.image = UIImage(named: "Dice5")
        case 6:
            dice1.image = UIImage(named: "Dice6")
        default:
            dice1.image = UIImage(named: "dice_empty")
        }
        
        if isTwoDices {
            switch Int.random(in: 1...6) {
            case 1:
                dice2.image = UIImage(named: "Dice1")
            case 2:
                dice2.image = UIImage(named: "Dice2")
            case 3:
                dice2.image = UIImage(named: "Dice3")
            case 4:
                dice2.image = UIImage(named: "Dice4")
            case 5:
                dice2.image = UIImage(named: "Dice5")
            case 6:
                dice2.image = UIImage(named: "Dice6")
            default:
                dice2.image = UIImage(named: "dice_empty")
            }
        }
    }
    
    @IBAction func setOneDice(_ sender: Any) {
        dice2.isHidden = true
    }
    
    @IBAction func setTwoDice(_ sender: Any) {
        dice2.isHidden = false
    }
}

