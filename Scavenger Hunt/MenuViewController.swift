//
//  MenuViewController.swift
//  Scavenger Hunt
//
//  Created by Smith, Frazier on 3/21/16.
//  Copyright © 2016 CPI Security. All rights reserved.
//

import UIKit
import CoreBluetooth
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

// Variables for Application Running

var timerTest = Int()
var timer = NSTimer()

class MenuViewController: UIViewController, CLLocationManagerDelegate {

// Function Calls for Buttons
    
    @IBAction func lobbyButton(sender: AnyObject) {
        
        referralTile = "Lobby"
    }
    
    
    @IBAction func breakroomButton(sender: AnyObject) {
    
        referralTile = "breakroom1"
    }
    
    @IBAction func operationsButton(sender: AnyObject) {
        
        referralTile = "operations"
    }

    @IBAction func centralStationButton(sender: AnyObject) {
    
        referralTile = "centralstation"
    }

    @IBAction func fishbowlButton(sender: AnyObject) {
        
        referralTile = "fishbowl"
    
    }
    
    @IBAction func breakroom2Button(sender: AnyObject) {
    
        referralTile = "breakroom2"
    }

    @IBAction func humanResourcesButton(sender: AnyObject) {
    
        referralTile = "hr"
    }

    @IBAction func smokingButton(sender: AnyObject) {
    
        referralTile = "smoking"
    }

    @IBAction func insideSalesButton(sender: AnyObject) {
        
        referralTile = "inside"
    }
    
    @IBAction func acgButton(sender: AnyObject) {
    
        referralTile = "acg"
    }
    
    @IBAction func techSupportButton(sender: AnyObject) {
    
        referralTile = "techsupport"
    }

    
    @IBAction func customerCareButton(sender: AnyObject) {
    
        referralTile = "customercare"
    }
    
    
// Dimensioned Variables
    
    @IBOutlet var branchTeam: UILabel!
    @IBOutlet var Background: UIImageView!
    @IBOutlet var iconA1: UIImageView!
    @IBOutlet var iconA1Button: UIButton!
    @IBOutlet var lobbyButton: UIButton!
    @IBOutlet var iconA1Check: UIImageView!
    @IBOutlet var iconA2: UIImageView!
    @IBOutlet var iconA2Check: UIImageView!
    @IBOutlet var breakroomButton: UIButton!
    @IBOutlet var iconA3: UIImageView!
    @IBOutlet var iconA3Check: UIImageView!
    @IBOutlet var operationsButton: UIButton!
    @IBOutlet var iconB1: UIImageView!
    @IBOutlet var iconB1Check: UIImageView!
    @IBOutlet var centralStationButton: UIButton!
    @IBOutlet var iconB2: UIImageView!
    @IBOutlet var iconB2Check: UIImageView!
    @IBOutlet var fishbowlButton: UIButton!
    @IBOutlet var iconB3: UIImageView!
    @IBOutlet var iconB3Check: UIImageView!
    @IBOutlet var breakroom2Button: UIButton!
    @IBOutlet var iconC1: UIImageView!
    @IBOutlet var iconC1Check: UIImageView!
    @IBOutlet var humanResourcesButton: UIButton!
    @IBOutlet var iconC2: UIImageView!
    @IBOutlet var iconC2Check: UIImageView!
    @IBOutlet var smokingButton: UIButton!
    @IBOutlet var iconC3: UIImageView!
    @IBOutlet var iconC3Check: UIImageView!
    @IBOutlet var insideSalesButton: UIButton!
    @IBOutlet var iconD1: UIImageView!
    @IBOutlet var iconD1Check: UIImageView!
    @IBOutlet var acgButton: UIButton!
    @IBOutlet var iconD2: UIImageView!
    @IBOutlet var iconD2Check: UIImageView!
    @IBOutlet var techSupportButton: UIButton!
    @IBOutlet var iconD3: UIImageView!
    @IBOutlet var iconD3Check: UIImageView!
    @IBOutlet var customerCareButton: UIButton!
    

// iBeacon Variables
    
    let IBEACON_PROXIMITY_UUID = "B9407F30-F5F8-466E-AFF9-25556B57FE6D"
    var locationManager: CLLocationManager!

    
    
//ViewDidLoad req
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
        lobbyButton.enabled = false
        breakroomButton.enabled = false
        operationsButton.enabled = false
        centralStationButton.enabled = false
        fishbowlButton.enabled = false
        breakroom2Button.enabled = false
        humanResourcesButton.enabled = false
        smokingButton.enabled = false
        insideSalesButton.enabled = false
        acgButton.enabled = false
        techSupportButton.enabled = false
        customerCareButton.enabled = false
        
       
// Ranging on Beacons
        

       
//Tried and True
        if teamColor == "red" {
            branchTeam.text = "Team Red"
        }
        if teamColor == "green" {
            branchTeam.text = "Team Green"
            iconA1Button.enabled = false
            Background.image = UIImage(named: "iPadUI-SceneB-green.png")
        }
        if teamColor == "blue" {
            branchTeam.text = "Team Blue"
        }
        if teamColor == "purple" {
            branchTeam.text = "Team Purple"
            Background.image = UIImage(named: "iPadUI-SceneB-purple.png")
        }
        if teamColor == "orange" {
            branchTeam.text = "Team Orange"
            Background.image = UIImage(named: "iPadUI-SceneB-orange.png")

        }
        if teamColor == "alone" {
            branchTeam.text = "Individual Participant"
           
        }
      //  if completionA1 == "yes" {
      //      iconA1Check.image = UIImage(named: "Checkmark-01")
      //  }
      //  if completionA2 == "yes" {
      //      iconA1Check.image = UIImage(named: "Checkmark-01")
      //  }
      //  if completionA3 == "yes" {
      //      iconA1Check.image = UIImage(named: "Checkmark-01")
      //  }
      // if completionB1 == "yes" {
      //      iconA1Check.image = UIImage(named: "Checkmark-01")
      //  }
      //  if completionB2 == "yes" {
      //      iconA1Check.image = UIImage(named: "Checkmark-01")
      //  }
      // if completionB3 == "yes" {
      //      iconA1Check.image = UIImage(named: "Checkmark-01")
      //  }
      //  if completionC1 == "yes" {
      //      iconA1Check.image = UIImage(named: "Checkmark-01")
      //  }
      //  if completionC2 == "yes" {
      //      iconA1Check.image = UIImage(named: "Checkmark-01")
      //  }
      //  if completionC3 == "yes" {
      //      iconA1Check.image = UIImage(named: "Checkmark-01")
      //  }
      //  if completionD1 == "yes" {
      //      iconA1Check.image = UIImage(named: "Checkmark-01")
      //  }
      //  if completionD2 == "yes" {
      //      iconA1Check.image = UIImage(named: "Checkmark-01")
      //  }
      //  if completionD3 == "yes" {
      //      iconA1Check.image = UIImage(named: "Checkmark-01")
      //  }
        

        
        // Set up if-then conditioning on a 1-second refresh.
        
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
        
        if completionA1 == "yes" {
            iconA1Check.image = UIImage(named: "Checkmark-01")
        }
        if completionA2 == "yes" {
            iconA2Check.image = UIImage(named: "Checkmark-01")
        }
        if completionA3 == "yes" {
            iconA3Check.image = UIImage(named: "Checkmark-01")
        }
        if completionB1 == "yes" {
            iconB1Check.image = UIImage(named: "Checkmark-01")
        }
        if completionB2 == "yes" {
            iconB2Check.image = UIImage(named: "Checkmark-01")
        }
        if completionB3 == "yes" {
            iconB3Check.image = UIImage(named: "Checkmark-01")
        }
        if completionC1 == "yes" {
            iconC1Check.image = UIImage(named: "Checkmark-01")
        }
        if completionC2 == "yes" {
            iconC2Check.image = UIImage(named: "Checkmark-01")
        }
        if completionC3 == "yes" {
            iconC3Check.image = UIImage(named: "Checkmark-01")
        }
        if completionD1 == "yes" {
            iconD1Check.image = UIImage(named: "Checkmark-01")
        }
        if completionD2 == "yes" {
            iconD2Check.image = UIImage(named: "Checkmark-01")
        }
        if completionD3 == "yes" {
            iconD3Check.image = UIImage(named: "Checkmark-01")
        }
        
        if completionA1 == "no" {
            if completionA2  == "yes" {
                if completionA3 == "yes" {
                    if completionB1 == "yes" {
                        if completionB2 == "yes" {
                            if completionB3 == "yes" {
                                if completionC1 == "yes" {
                                    if completionC2 == "yes" {
                                        if completionC3 == "yes" {
                                            if completionD1 == "yes" {
                                                if completionD2 == "yes" {
                                                    if completionD3 == "yes" {
                                                        performSegueWithIdentifier("tableau", sender: self)

                                                    }
                                                }
                                            }
                                            
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        
    }
    
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if !(status == .AuthorizedAlways || status == .AuthorizedWhenInUse) {
            print("Must allow location access for this application to work")
        } else {
            if let uuid = NSUUID(UUIDString: IBEACON_PROXIMITY_UUID) {
                let beaconRegion = CLBeaconRegion(proximityUUID: uuid, identifier: "iBeacon")
                startMonitoring(beaconRegion)
                startRanging(beaconRegion)
            }
        }
    }
    
    func startMonitoring(beaconRegion: CLBeaconRegion) {
        beaconRegion.notifyOnEntry = true
        beaconRegion.notifyOnExit = true
        locationManager.startMonitoringForRegion(beaconRegion)
        
    }
    
    func startRanging(beaconRegion: CLBeaconRegion) {
        locationManager.startRangingBeaconsInRegion(beaconRegion)
    }
    
    //  ======== CLLocationManagerDelegate methods ==========
    
    func locationManager(manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], inRegion region: CLBeaconRegion) {
        for beacon in beacons {
            var beaconProximity: String;
            switch (beacon.proximity) {
            case CLProximity.Unknown:    beaconProximity = "Unknown";
            case CLProximity.Far:        beaconProximity = "Far";
            case CLProximity.Near:       beaconProximity = "Near";
            case CLProximity.Immediate:  beaconProximity = "Immediate";
            }
            // print("BEACON RANGED: uuid: \(beacon.proximityUUID.UUIDString) major: \(beacon.major)  minor: \(beacon.minor) proximity: \(beaconProximity)")
            
        //Lobby
            if 1234 == beacon.minor {
                if "Unknown" == beaconProximity {
                    iconA1.image = UIImage(named: "signsg")
                    print("Lobby Found!")
                    lobbyButton.enabled = true
                    }
                if "Far" == beaconProximity {
                    iconA1.image = UIImage(named: "signsg")
                    print("Lobby Found!")
                    lobbyButton.enabled = true
                }
                if "Near" == beaconProximity {
                    iconA1.image = UIImage(named: "signsg")
                    print("Lobby Found!")
                    lobbyButton.enabled = true

                }
                }
        //Breakroom 1
            if 60381 == beacon.minor {
                if "Unknown" == beaconProximity {
                    iconA2.image = UIImage(named: "drinkg")
                    breakroomButton.enabled = true
                }
                if "Far" == beaconProximity {
                    iconA2.image = UIImage(named: "drinkg")
                    breakroomButton.enabled = true
                }
                if "Near" == beaconProximity {
                    iconA2.image = UIImage(named: "drinkg")
                    breakroomButton.enabled = true
                }
            }
        //Operations
            if 40122 == beacon.minor {
                if "Unknown" == beaconProximity {
                    iconA3.image = UIImage(named: "people-2g")
                    operationsButton.enabled = true
                }
                if "Far" == beaconProximity {
                    iconA3.image = UIImage(named: "people-2g")
                    operationsButton.enabled = true
                }
                if "Near" == beaconProximity {
                    iconA3.image = UIImage(named: "people-2g")
                    operationsButton.enabled = true
                }
            }
        //Central Station
            if 43269 == beacon.minor {
                if "Unknown" == beaconProximity {
                    iconB1.image = UIImage(named: "telephone g")
                    centralStationButton.enabled = true
                }
                if "Far" == beaconProximity {
                    iconB1.image = UIImage(named: "telephone g")
                     centralStationButton.enabled = true
                }
                if "Near" == beaconProximity {
                    iconB1.image = UIImage(named: "telephone g")
                     centralStationButton.enabled = true
                }
            }
        //Fishbowl
            if 40122 == beacon.minor {
                if "Unknown" == beaconProximity {
                    iconB2.image = UIImage(named: "animalg")
                    fishbowlButton.enabled = true
                }
                if "Far" == beaconProximity {
                    iconB2.image = UIImage(named: "animalg")
                    fishbowlButton.enabled = true

                }
                if "Near" == beaconProximity {
                    iconB2.image = UIImage(named: "animalg")
                    fishbowlButton.enabled = true

                }
            }
        //Breakroom 2
            if 34219 == beacon.minor {
                if "Unknown" == beaconProximity {
                    iconB3.image = UIImage(named: "drink-1g")
                    breakroom2Button.enabled = true

                }
                if "Far" == beaconProximity {
                    iconB3.image = UIImage(named: "drink-1g")
                    breakroom2Button.enabled = true

                }
                if "Near" == beaconProximity {
                    iconB3.image = UIImage(named: "drink-1g")
                    breakroom2Button.enabled = true

                }
            }
        //Human Resources
            if 16521 == beacon.minor {
                if "Unknown" == beaconProximity {
                    iconC1.image = UIImage(named: "peopleg")
                    humanResourcesButton.enabled = true
                }
                if "Far" == beaconProximity {
                    iconC1.image = UIImage(named: "peopleg")
                    humanResourcesButton.enabled = true

                }
                if "Near" == beaconProximity {
                    iconC1.image = UIImage(named: "peopleg")
                    humanResourcesButton.enabled = true

                }
            }
        //Parking and Smoking
            if 30241 == beacon.minor {
                if "Unknown" == beaconProximity {
                    iconC2.image = UIImage(named: "forbiddeng")
                    smokingButton.enabled = true
                }
                if "Far" == beaconProximity {
                    iconC2.image = UIImage(named: "forbiddeng")
                    smokingButton.enabled = true
                }
                if "Near" == beaconProximity {
                    iconC2.image = UIImage(named: "forbiddeng")
                    smokingButton.enabled = true
                }
            }
        //Inside Sales
            if 3021 == beacon.minor {
                if "Unknown" == beaconProximity {
                    iconC3.image = UIImage(named: "phoneg")
                    insideSalesButton.enabled = true
                }
                if "Far" == beaconProximity {
                    iconC3.image = UIImage(named: "phoneg")
                    insideSalesButton.enabled = true

                }
                if "Near" == beaconProximity {
                    iconC3.image = UIImage(named: "phoneg")
                    insideSalesButton.enabled = true

                }
            }
        //ACG
            if 10836 == beacon.minor {
                if "Unknown" == beaconProximity {
                    iconD1.image = UIImage(named: "people-1g")
                    acgButton.enabled = true

                }
                if "Far" == beaconProximity {
                    iconD1.image = UIImage(named: "people-1g")
                    acgButton.enabled = true

                }
                if "Near" == beaconProximity {
                    iconD1.image = UIImage(named: "people-1g")
                    acgButton.enabled = true
                }
            }
        //Tech Support
            if 56059 == beacon.minor {
                if "Unknown" == beaconProximity {
                    iconD2.image = UIImage(named: "computerg")
                    techSupportButton.enabled = true

                }
                if "Far" == beaconProximity {
                    iconD2.image = UIImage(named: "computerg")
                    techSupportButton.enabled = true

                }
                if "Near" == beaconProximity {
                    iconD2.image = UIImage(named: "computerg")
                    techSupportButton.enabled = true

                }
            }
        //Customer Care
            if 1339 == beacon.minor {
                if "Unknown" == beaconProximity {
                    iconD3.image = UIImage(named: "interfaceg")
                    customerCareButton.enabled = true

                }
                if "Far" == beaconProximity {
                    iconD3.image = UIImage(named: "interfaceg")
                    customerCareButton.enabled = true
                }
                if "Near" == beaconProximity {
                    iconD3.image = UIImage(named: "interfaceg")
                    customerCareButton.enabled = true
                }
                
            }

                }
            
        }
    }
    
    func locationManager(manager: CLLocationManager, didStartMonitoringForRegion region: CLRegion) {
        print("monitoring started")
    }
    
    func locationManager(manager: CLLocationManager, monitoringDidFailForRegion region: CLRegion?, withError error: NSError) {
        print("monitoring failed")
    }
    
    func locationManager(manager: CLLocationManager, didEnterRegion region: CLRegion) {
        if let beaconRegion = region as? CLBeaconRegion {
            print("DID ENTER REGION: uuid: \(beaconRegion.proximityUUID.UUIDString)")
        }
    }
    
    func locationManager(manager: CLLocationManager, didExitRegion region: CLRegion) {
        if let beaconRegion = region as? CLBeaconRegion {
            print("DID EXIT REGION: uuid: \(beaconRegion.proximityUUID.UUIDString)")
        }
    }

    





