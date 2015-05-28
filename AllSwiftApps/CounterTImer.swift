//
//  CounterTImer.swift
//  AllSwiftApps
//
//  Created by Thota, Surendra Babu on 28/5/15.
//  Copyright (c) 2015 Thota, Surendra Babu. All rights reserved.
//

import UIKit

class CounterTImer: UIViewController {

    @IBOutlet weak var Counter: UILabel!
    var defaultCounter : Int = 0
    var Timer : NSTimer = NSTimer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Counter.text = String(defaultCounter)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goBack(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

   
    @IBAction func counterStart(sender: AnyObject) {
        Timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("countHere"), userInfo: nil, repeats: true)
    }

    @IBAction func counterPause(sender: AnyObject) {
        Timer.invalidate()
    }
    
    @IBAction func counterReset(sender: AnyObject) {
        
        Timer.invalidate()
        defaultCounter = 0
        Counter.text = String(defaultCounter)
        
    }
    func countHere (){
        defaultCounter = defaultCounter + 1
        Counter.text = String(defaultCounter)
    }
}
