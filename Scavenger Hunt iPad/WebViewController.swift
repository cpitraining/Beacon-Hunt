//
//  WebViewController.swift
//  Scavenger Hunt
//
//  Created by Smith, Frazier on 3/21/16.
//  Copyright © 2016 CPI Security. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBAction func returnToHunt(sender: AnyObject) {
     
            
       
        
    }
    @IBOutlet var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(referralTile)
        let url = NSURL (string: "https://www.google.com");
        let requestObj = NSURLRequest(URL: url!);
        myWebView.loadRequest(requestObj);
        self.view.addSubview(myWebView)
        
        
        if referralTile == "Lobby" {
            completionA1 = "yes"
            
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
