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
        
        callStoryboard("HelloWorld", storyboardID: "HelloWorld")
        
    }  

    @IBAction func CIO(sender: AnyObject) {
        
        callStoryboard("countInOut", storyboardID: "CountInOut")
        
        
    }
   
    @IBAction func counterTimer(sender: AnyObject) {
        
        callStoryboard("CounterTimer", storyboardID: "countertimer")
        
    }
    @IBAction func SimpleTable(sender: AnyObject) {
        
        callStoryboard("ShowTable", storyboardID: "SimpleTable")
        
    }
    
    @IBAction func Calculator(sender: AnyObject) {
                println("test")
        callStoryboard("Calculator", storyboardID: "CalculatorStoryBoard")
    }
    func callStoryboard(storyboardName: String, storyboardID:String){
        
        var storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        
        var controller = storyboard.instantiateViewControllerWithIdentifier(storyboardID) as! UIViewController
        
        self.presentViewController(controller, animated: true, completion: nil)
        
    }
    
}

