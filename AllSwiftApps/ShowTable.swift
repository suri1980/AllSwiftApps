//
//  ShowTable.swift
//  AllSwiftApps
//
//  Created by Thota, Surendra Babu on 28/5/15.
//  Copyright (c) 2015 Thota, Surendra Babu. All rights reserved.
//

import UIKit

class ShowTable: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableViewObject: UITableView!
    
    var items : [String] = ["one", "two", "three", "four"]
    
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
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return items.count
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "mycell")
        
        cell.textLabel!.text = items[indexPath.row]
        
        return cell
        
    }

    

}
