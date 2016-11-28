//
//  ViewController.swift
//  Scavenger Hunt
//
//  Created by Smith, Frazier on 3/21/16.
//  Copyright © 2016 CPI Security. All rights reserved.
//

import UIKit

var teamColor = ""


class ViewController: UIViewController {



    @IBAction func teamRed(sender: AnyObject) {
        print("red")
        teamColor = "red"
    }

    
    @IBAction func teamGreen(sender: AnyObject) {
        print("green")
        teamColor = "green"

    }

    @IBAction func teamBlue(sender: AnyObject) {
        print("blue")
        teamColor = "blue"
    }
    
    @IBAction func teamPurple(sender: AnyObject) {
        print("purple")
        teamColor = "purple"
    }

    @IBAction func teamOrange(sender: AnyObject) {
        print("orange")
        teamColor = "orange"
    }
    
    @IBAction func teamAlone(sender: AnyObject) {
        print("alone")
        teamColor = "alone"
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

