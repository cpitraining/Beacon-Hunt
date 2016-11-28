//
//  MenuViewController.swift
//  Scavenger Hunt
//
//  Created by Smith, Frazier on 3/21/16.
//  Copyright © 2016 CPI Security. All rights reserved.
//

import UIKit
import CoreLocation

var referralTile = ""
var urlToVisit = ""
var completionA1 = ""
var inRangeA1 = ""
var completionA2 = ""
var inRangeA2 = ""
var completionA3 = ""
var inRangeA3 = ""
var completionB1 = ""
var inRangeB1 = ""
var completionB2 = ""
var inRangeB2 = ""
var completionB3 = ""
var inRangeB3 = ""
var completionC1 = ""
var inRangeC1 = ""
var completionC2 = ""
var inRangeC2 = ""
var completionC3 = ""
var inRangeC3 = ""
var completionD1 = ""
var inRangeD1 = ""
var completionD2 = ""
var inRangeD2 = ""
var completionD3 = ""
var inRangeD3 = ""
var timerTest = Int()
var timer = NSTimer()

class MenuViewController: UIViewController, CLLocationManagerDelegate {

// Function Calls for Buttons
    
    @IBAction func lobbyButton(sender: AnyObject) {
        
        referralTile = "Lobby"
    }

// Dimensioned Variables
    
    @IBOutlet var branchTeam: UILabel!
    @IBOutlet var iconA1: UIImageView!
    @IBOutlet var iconA1Button: UIButton!
    @IBOutlet var iconA1Check: UIImageView!
    @IBOutlet var iconA2: UIImageView!
    @IBOutlet var iconA3: UIImageView!
    @IBOutlet var iconB1: UIImageView!
    @IBOutlet var iconB2: UIImageView!
    @IBOutlet var iconB3: UIImageView!
    @IBOutlet var iconC1: UIImageView!
    @IBOutlet var iconC2: UIImageView!
    @IBOutlet var iconC3: UIImageView!
    @IBOutlet var iconD1: UIImageView!
    @IBOutlet var iconD2: UIImageView!
    @IBOutlet var iconD3: UIImageView!
    var locationManager: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        
        if teamColor == "red" {
            branchTeam.text = "Team Red"
        }
        if teamColor == "green" {
            branchTeam.text = "Team Green"
            iconA1Button.enabled = false
        }
        if teamColor == "blue" {
            branchTeam.text = "Team Blue"
        }
        if teamColor == "purple" {
            branchTeam.text = "Team Purple"
        }
        if teamColor == "orange" {
            branchTeam.text = "Team Orange"
        }
        if teamColor == "alone" {
            branchTeam.text = "Individual Participant"
           
        }
        if completionA1 == "yes" {
            iconA1Check.image = UIImage(named: "Checkmark-01")
        }
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target:self, selector: #selector(MenuViewController.checkBeaconStatus), userInfo: nil, repeats: true)
        
        
        
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
    
    func checkBeaconStatus() {
    timerTest = timerTest + 1
        print(timerTest)
        
    }
    
}



