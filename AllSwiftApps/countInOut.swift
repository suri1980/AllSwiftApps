//
//  countInOut.swift
//  AllSwiftApps
//
//  Created by Thota, Surendra Babu on 28/5/15.
//  Copyright (c) 2015 Thota, Surendra Babu. All rights reserved.
//

import UIKit

class countInOut: UIViewController {

    @IBOutlet weak var CounterLabel: UILabel!
    var Counter : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cioBack(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }

    @IBAction func addButton(sender: AnyObject) {
        CounterLabel.text = String(++Counter)
    }
    
    @IBAction func resetButton(sender: AnyObject) {
        Counter = 0
        CounterLabel.text = String(Counter)
    }
    
    
    @IBAction func minusButton(sender: AnyObject) {
        
        CounterLabel.text = String(--Counter)
    }
}
