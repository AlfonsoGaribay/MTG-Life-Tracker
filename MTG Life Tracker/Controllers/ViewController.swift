//
//  ViewController.swift
//  MTG Life Tracker
//
//  Created by Alfonso Garibay on 6/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerTwoImage: UIImageView!
    @IBOutlet weak var playerOneImage: UIImageView!
    
    // Player 2:
    @IBOutlet weak var playerTwoPlus2Button: UIButton!
    @IBOutlet weak var playerTwoMinus2Button: UIButton!
    @IBOutlet weak var resetPlayerTwo: UIButton!
    @IBOutlet weak var playerTwoPlus1Button: UIButton!
    @IBOutlet weak var playerTwoMinus1Button: UIButton!
    @IBOutlet weak var playerTwoLifeLabel: UILabel!
    
    // Player 1:
    @IBOutlet weak var playerOnePlus2Button: UIButton!
    @IBOutlet weak var resetPlayerOne: UIButton!
    @IBOutlet weak var playerOneMinus2Button: UIButton!
    @IBOutlet weak var playerOneLifeLabel: UILabel!
    @IBOutlet weak var playerOnePlus1Button: UIButton!
    @IBOutlet weak var playerOneMinus1Button: UIButton!
    
    var player1 = Player(1)
    var player2 = Player(2)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(player1.playerID)
        print(player2.playerID)
        
        // BELOW: allows for the rotation of the individual components... maybe try rotating it all together? 
        let aPlusTwo: UIButton = playerTwoPlus2Button
            aPlusTwo.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        let aPlusOne: UIButton = playerTwoPlus1Button
            aPlusOne.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        let aMinusTwo: UIButton = playerTwoMinus2Button
            aMinusTwo.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        let aMinusOne: UIButton = playerTwoMinus1Button
            aMinusOne.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        let aReset: UIButton = resetPlayerTwo
            aReset.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        let aHealthLabel: UILabel = playerTwoLifeLabel
            aHealthLabel.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        
        
    }

    
    //MARK: - Plus_1_button_function
    
    @IBAction func upDownOnePressed(_ sender: UIButton) {
        switch sender {
        case playerOnePlus1Button:
            print("player 1 is up 1")
            player1.playerHealth += 1
        case playerOneMinus1Button:
            print("player 1 is down 2")
            player1.playerHealth -= 1
        case playerTwoPlus1Button:
            print("player 2 is up 1")
            player2.playerHealth += 1
        case playerTwoMinus1Button:
            print("player 2 is down 2")
            player2.playerHealth -= 1
        default:
            print(">> error!")
        }
        // do some function to check if its zero yet
        playerOneLifeLabel.text = String(player1.playerHealth)
        playerTwoLifeLabel.text = String(player2.playerHealth)
    }
    
    //MARK: - Plus_2_button_function
   
    @IBAction func upDownTwoPressed(_ sender: UIButton) {
        switch sender {
        case playerOnePlus2Button:
            print("player 1 is up 2")
            player1.playerHealth += 2
        case playerOneMinus2Button:
            print("player 1 is down 2")
            player1.playerHealth -= 2
        case playerTwoPlus2Button:
            print("player 2 is up 2")
            player2.playerHealth += 2
        case playerTwoMinus2Button:
            print("player 2 is down 2")
            player2.playerHealth -= 2
        default:
            print(">> error!")
        }
        // do some function to check if its zero yet
        playerOneLifeLabel.text = String(player1.playerHealth)
        playerTwoLifeLabel.text = String(player2.playerHealth)
    }
    
    //MARK: - Reset_button
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        print(">> life reset...")
        player1.playerHealth = 20
        player2.playerHealth = 20
        
        playerOneLifeLabel.text = String(player1.playerHealth)
        playerTwoLifeLabel.text = String(player2.playerHealth)
    }
    
}

