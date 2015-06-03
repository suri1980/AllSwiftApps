//
//  Calculator.swift
//  AllSwiftApps
//
//  Created by Thota, Surendra Babu on 28/5/15.
//  Copyright (c) 2015 Thota, Surendra Babu. All rights reserved.
//

import UIKit

class Calculator: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    var labelDefaultValue : Int = 0
    var isFirstDigit : Bool = true
    var firstNumber : Double = 0
    var secondNumber : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func numberClicked(sender: UIButton) {
        let digit = sender.currentTitle
        
        if (isFirstDigit){
            outputLabel.text=digit
        }else{
            outputLabel.text = outputLabel.text! + digit!
        }
        isFirstDigit = false
        
    }
    
    @IBAction func opClicked(sender: UIButton) {
     
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
