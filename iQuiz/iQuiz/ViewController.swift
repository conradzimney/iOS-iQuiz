//
//  ViewController.swift
//  iQuiz
//
//  Created by Conrad Zimney on 11/1/15.
//  Copyright © 2015 Conrad Zimney. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let topics = [
        ["Subject" : "Mathematics", "Description" : "Mathematics Quiz!"],
        ["Subject" : "Marvel Super Heroes", "Description" : "Marvel Super Heroes Quiz!"],
        ["Subject" : "Science", "Description" : "Science Quiz!"]
    ]
    
    //let simpleTableIdentifier = "SimpleTableIdentifier"
    let cellTableIdentifier = "CellTableIdentifier"
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.registerClass(QuizCell.self, forCellReuseIdentifier: cellTableIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func settingsClicked(sender: AnyObject) {
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
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellTableIdentifier, forIndexPath: indexPath) as! QuizCell
        
        let imageView = UIImageView(frame: CGRectMake(10, 10, 10, 10))
        let image = UIImage(named: "quiz")
        imageView.image = image
        cell.imageView?.image = image
        /*
        cell!.textLabel?.text = topics[indexPath.row]
        cell!.textLabel?.font = UIFont.boldSystemFontOfSize(20)
        return cell!
        */
        let rowData = topics[indexPath.row]
        cell.subject = rowData["Subject"]!
        cell.desc = rowData["Description"]!
        // cell.desc.font = UIFont.boldSystemFontOfSize(10)
        return cell
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }

}

