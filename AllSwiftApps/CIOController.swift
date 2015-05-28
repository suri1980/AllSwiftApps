//
//  CIOController.swift
//  AllSwiftApps
//
//  Created by Thota, Surendra Babu on 27/5/15.
//  Copyright (c) 2015 Thota, Surendra Babu. All rights reserved.
//

import UIKit

class CIOController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    var Counter : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonClicked(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func addButton(sender: AnyObject) {
        Counter=Counter+1
        counterLabel.text=String(Counter)
    }
    @IBAction func resetButton(sender: AnyObject) {
        Counter = 0
        counterLabel.text = String(Counter)
        
    }
    
    @IBAction func minusButton(sender: AnyObject) {
        Counter=Counter-1
        counterLabel.text=String(Counter)
        
    }
}
