//
//  ResultsViewController.swift
//  P03-RPSGameApp
//
//  Created by ByRamon on 2/8/20.
//  Copyright © 2020 ByRamon. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var imgResult: UIImageView!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var lblTextResult: UILabel!
    var myvar : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        let number = Int.random(in: 1 ..< 4)
        var eleccion = "Rock"
        if myvar == 2 { eleccion = "Paper"}
        else if myvar == 3 { eleccion = "Scissors" }
        var computerEleccion = "Rock"
        if number == 2 { computerEleccion = "Paper"}
        else if number == 3 { computerEleccion = "Scissors" }
        
        print("\(myvar) - \(number)")
        if myvar == number {
            lblResult.text = "Draw"
            lblTextResult.text = "You and the computer choice \(eleccion)"
            if myvar == 1 {
                imgResult.image = UIImage(named: "rock")
            }
            else if myvar == 2 {
                imgResult.image = UIImage(named: "paper")
            }
            else {
                imgResult.image = UIImage(named: "scissors")
            }
        }
        else{
            lblTextResult.text = "The computer choice was \(computerEleccion) and yours was \(eleccion)"
            if (number == 2 && myvar == 1) || (number == 3 && myvar == 2) || (number == 1 && myvar == 3) {
                lblResult.text = "You Lose"
                if myvar == 3{
                    imgResult.image = UIImage(named: "RockCrushesScissors")
                }
                else if myvar == 2{
                    imgResult.image = UIImage(named: "ScissorsCutPaper")
                }
                else{
                    imgResult.image = UIImage(named: "PaperCoversRock")
                }
            }
            else{
                lblResult.text = "You Win"
                if myvar == 3{
                    imgResult.image = UIImage(named: "ScissorsCutPaper")
                }
                else if myvar == 2{
                    imgResult.image = UIImage(named: "PaperCoversRock")
                }
                else{
                    imgResult.image = UIImage(named: "RockCrushesScissors")
                }
            }
        }
        /*
        else if myvar == 2 && number == 3 {
            lblResult.text = "You Lose"
            lblTextResult.text = "The computer choice was SCISSORS and yours was PAPER"
            imgResult.image = UIImage(named: "ScissorsCutPaper")
        }
        else if myvar == 1 && number == 2 {
            lblResult.text = "You Lose"
            lblTextResult.text = "The computer choice was PAPER and yours was ROCK"
            imgResult.image = UIImage(named: "PaperCoversRock")
        }
        else{
            lblResult.text = "You Win"
            if myvar == 3{
                lblTextResult.text = "The computer choice was PAPER and yours was SCISSORS"
                imgResult.image = UIImage(named: "ScissorsCutPaper")
            }
            if myvar == 2{
                lblTextResult.text = "The computer choice was ROCK and yours was PAPER"
                imgResult.image = UIImage(named: "PaperCoversRock")
            }
            else{
                lblTextResult.text = "The computer choice was SCISSORS and yours was ROCK"
                imgResult.image = UIImage(named: "RockCrushesScissors")
            }
        }*/
    }
    
    @IBAction func btnTryAggainClick(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
