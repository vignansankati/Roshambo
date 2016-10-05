//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Vignan on 10/5/16.
//  Copyright © 2016 nwmissourinwmissouri. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultIV: UIImageView!
    @IBOutlet weak var resultLBL: UILabel!
    @IBOutlet weak var playAgainBTN: UIButton!
    
    let gameChoices = ["paper","rock","scissors"]
    var opponentChoice:String = ""
    var humanChoice:String = ""
    
    @IBAction func playAgain(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func opponentGame() -> String {
        opponentChoice = gameChoices[Int(1 + arc4random()%2)]
        return opponentChoice
    }
    
    func gameResult() {
        if opponentGame() == "rock" {
            switch humanChoice {
            case "paper":
                resultLBL.text = "Paper covers rock. You win!"
                resultIV.image = UIImage(named:"PaperCoversRock.jpg")
            case "rock":
                resultLBL.text = "It's a tie"
                resultIV.image = UIImage(named: "itsATie")
            case "scissors":
                resultLBL.text = "Rock breaks scissors. Computer wins!"
                resultIV.image = UIImage(named: "RockCrushesScissors.jpeg")
            default:
                resultLBL.text = "🙃"
            }
        }
        else if opponentGame() == "scissors" {
            switch humanChoice {
            case "paper":
                resultLBL.text = "scissors cut paper. Computer wins!"
                resultIV.image = UIImage(named: "ScissorsCutPaper.jpg")
            case "rock":
                resultLBL.text = "Rock breaks scissors. You wins!"
                resultIV.image = UIImage(named: "RockCrushesScissors.jpeg")
            case "scissors":
                resultLBL.text = "It's a tie"
                resultIV.image = UIImage(named: "itsATie")
            default:
                resultLBL.text = "🙃"
            }
        }
        else {
            switch humanChoice {
            case "paper":
                resultLBL.text = "It's a tie"
                resultIV.image = UIImage(named: "itsATie")
            case "rock":
                resultLBL.text = "Paper covers rock. Computer wins!"
                resultIV.image = UIImage(named:"PaperCoversRock.jpg")
            case "scissors":
                resultLBL.text = "scissors cut paper. You win"
                resultIV.image = UIImage(named: "ScissorsCutPaper.jpg")
            default:
                resultLBL.text = "🙃"
            }
        }
        
    }
    
    override func viewDidLoad() {
        gameResult()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
