//
//  WebViewController.swift
//  Scavenger Hunt
//
//  Created by Smith, Frazier on 3/21/16.
//  Copyright © 2016 CPI Security. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet var Background: UIImageView!
    @IBAction func returnToHunt(sender: AnyObject) {
     
            
       
        
    }
    @IBOutlet var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(referralTile)
        myWebView.scrollView.bounces = false;
      
        
        
        if referralTile == "Lobby" {
            completionA1 = "yes"
            let url = NSURL (string: "#");
            let requestObj = NSURLRequest(URL: url!);
            myWebView.loadRequest(requestObj);
            self.view.addSubview(myWebView)
   
        }
        if referralTile == "breakroom1" {
            completionA2 = "yes"
            let url = NSURL (string: "#");
            let requestObj = NSURLRequest(URL: url!);
            myWebView.loadRequest(requestObj);
            self.view.addSubview(myWebView)
        }
        if referralTile == "operations" {
            completionA3 = "yes"
            let url = NSURL (string: "#");
            let requestObj = NSURLRequest(URL: url!);
            myWebView.loadRequest(requestObj);
            self.view.addSubview(myWebView)
        }
        if referralTile == "centralstation" {
            completionB1 = "yes"
            let url = NSURL (string: "#");
            let requestObj = NSURLRequest(URL: url!);
            myWebView.loadRequest(requestObj);
            self.view.addSubview(myWebView)
        }
        if referralTile == "fishbowl" {
            completionB2 = "yes"
            let url = NSURL (string: "#");
            let requestObj = NSURLRequest(URL: url!);
            myWebView.loadRequest(requestObj);
            self.view.addSubview(myWebView)
        }
        if referralTile == "breakroom2" {
            completionB3 = "yes"
            let url = NSURL (string: "#");
            let requestObj = NSURLRequest(URL: url!);
            myWebView.loadRequest(requestObj);
            self.view.addSubview(myWebView)
        }
        if referralTile == "hr" {
            completionC1 = "yes"
            let url = NSURL (string: "#");
            let requestObj = NSURLRequest(URL: url!);
            myWebView.loadRequest(requestObj);
            self.view.addSubview(myWebView)
        }
        if referralTile == "smoking" {
            completionC2 = "yes"
            let url = NSURL (string: "#");
            let requestObj = NSURLRequest(URL: url!);
            myWebView.loadRequest(requestObj);
            self.view.addSubview(myWebView)
        }
        if referralTile == "inside" {
            completionC3 = "yes"
            let url = NSURL (string: "#");
            let requestObj = NSURLRequest(URL: url!);
            myWebView.loadRequest(requestObj);
            self.view.addSubview(myWebView)
        }
        if referralTile == "acg" {
            completionD1 = "yes"
            let url = NSURL (string: "#");
            let requestObj = NSURLRequest(URL: url!);
            myWebView.loadRequest(requestObj);
            self.view.addSubview(myWebView)
        }
        if referralTile == "techsupport" {
            completionD2 = "yes"
            let url = NSURL (string: "#");
            let requestObj = NSURLRequest(URL: url!);
            myWebView.loadRequest(requestObj);
            self.view.addSubview(myWebView)
        }
        if referralTile == "customercare" {
            completionD3 = "yes"
            let url = NSURL (string: "#");
            let requestObj = NSURLRequest(URL: url!);
            myWebView.loadRequest(requestObj);
            self.view.addSubview(myWebView)
        }
        
        
        if teamColor == "red" {
            
        }
        if teamColor == "green" {
           Background.image = UIImage(named: "iPadUI-SceneB-green.png")
        }
        if teamColor == "blue" {
           Background.image = UIImage(named: "iPadUI-SceneB-green.png")
        }
        if teamColor == "purple" {
            Background.image = UIImage(named: "iPadUI-SceneB-purple.png")
        }
        if teamColor == "orange" {
            Background.image = UIImage(named: "iPadUI-SceneB-orange.png")
        }
        if teamColor == "alone" {
            
        }
        if completionA1 == "yes" {
  
        }


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
