//
//  ViewController.swift
//  iQuiz
//
//  Created by Conrad Zimney on 11/1/15.
//  Copyright © 2015 Conrad Zimney. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let topics = ["Mathematics", "Marvel Super Heroes", "Science"]
    
    let simpleTableIdentifier = "SimpleTableIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func settingsClicked(sender: AnyObject) {
        // make UIAlertController Pop up
        print("I was clicked!!")
        let message = "Settings will go here!"
        let controller = UIAlertController(title: "Settings",
            message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK",
            style: .Default, handler: nil)
        controller.addAction(action)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
            return topics.count
    }
    
    func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCellWithIdentifier(simpleTableIdentifier)
                as UITableViewCell!
            if (cell == nil) {
                cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: simpleTableIdentifier)
            }
        cell!.textLabel?.text = topics[indexPath.row]
        cell!.textLabel?.font = UIFont.boldSystemFontOfSize(20)
        return cell!
    }
    /*
    func tableView(tableView: UITableView,
        indentationLevelForRowAtIndexPath
        indexPath: NSIndexPath) -> Int {
            return indexPath.row
    }
    
    func tableView(tableView: UITableView,
        willSelectRowAtIndexPath indexPath: NSIndexPath)
        -> NSIndexPath? {
            if indexPath.row == 0 {
                return nil
            } else if (indexPath.row % 2 == 0){
                return NSIndexPath(forRow: indexPath.row + 1, inSection: indexPath.section)
            } else {
                return indexPath
            }
    }
*/
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 70
    }

}

