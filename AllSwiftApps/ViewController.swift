//
//  ViewController.swift
//  AllSwiftApps
//
//  Created by Thota, Surendra Babu on 27/5/15.
//  Copyright (c) 2015 Thota, Surendra Babu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func helloWorld(sender: UIButton) {
        
        var storyboard = UIStoryboard(name: "HelloWorld", bundle: nil)
        var controller = storyboard.instantiateViewControllerWithIdentifier("HelloWorld") as! UIViewController
        self.presentViewController(controller, animated: true, completion: nil)
        
    }  

    @IBAction func CIO(sender: AnyObject) {
        
        var storyboard = UIStoryboard(name: "countInOut", bundle: nil)
        
        var controller = storyboard.instantiateViewControllerWithIdentifier("CountInOut") as! UIViewController
        
        self.presentViewController(controller, animated: true, completion: nil)
        
    }
   
    @IBAction func counterTimer(sender: AnyObject) {
        
        var storyboard = UIStoryboard(name: "CounterTimer", bundle: nil)
        
        var controller = storyboard.instantiateViewControllerWithIdentifier("countertimer") as! UIViewController
        
        self.presentViewController(controller, animated: true, completion: nil)
        
        
    }
}

