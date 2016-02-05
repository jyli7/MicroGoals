//
//  FirstViewController.swift
//  MicroGoals
//
//  Created by Jimmy Li on 2/2/16.
//  Copyright (c) 2016 jylcreations. All rights reserved.
//

import UIKit

class MicroGoal {
    var name = String()
    var time = NSTimeInterval()
    var completed = Bool()
}

var currentItem = MicroGoal()

class FirstViewController: UIViewController {

    @IBOutlet weak var item: UITextField!
    
    @IBOutlet weak var timePicker: UIDatePicker!
    
    @IBOutlet weak var itemLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var currentlyWorkingOn: UILabel!
    
    @IBOutlet weak var timeLeftLabel: UILabel!
    
    @IBAction func addItem(sender: AnyObject) {
        currentItem.name = item.text
        currentItem.time = timePicker.countDownDuration
        currentItem.completed = false
        
        itemLabel.hidden = true
        item.hidden = true
        timeLabel.hidden = true
        timePicker.hidden = true
        
        currentlyWorkingOn.text = currentItem.name
        currentlyWorkingOn.hidden = false
        timeLeftLabel.hidden = false
        timeLeftLabel.text = currentItem.time.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemLabel.textAlignment = NSTextAlignment.Center
        timeLabel.textAlignment = NSTextAlignment.Center
        timePicker.countDownDuration = 1800
        currentlyWorkingOn.hidden = true
        timeLeftLabel.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

