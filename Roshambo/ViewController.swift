//
//  ViewController.swift
//  Roshambo
//
//  Created by Vignan on 10/5/16.
//  Copyright © 2016 nwmissourinwmissouri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rockBTN: UIButton!
    @IBOutlet weak var paperBTN: UIButton!
    @IBOutlet weak var scissors: UIButton!
    
    @IBAction func rockSelection(sender: AnyObject) {
        var resultViewController = ResultViewController()
        resultViewController = self.storyboard?.instantiateViewControllerWithIdentifier("resultViewController") as! ResultViewController
        resultViewController.humanChoice = "rock"
        self.presentViewController(resultViewController, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultVC = segue.destinationViewController as! ResultViewController
        resultVC.humanChoice = "paper"
    }
    
    @IBAction func scissorSelection(sender: AnyObject) {
        performSegueWithIdentifier("paperSegue", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

