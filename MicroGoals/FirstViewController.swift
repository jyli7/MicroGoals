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

    @IBOutlet weak var tempItemName: UILabel!
    @IBOutlet weak var item: UITextField!
    
    @IBOutlet weak var timeChosen: UIDatePicker!
    
    @IBAction func addItem(sender: AnyObject) {
        currentItem.name = item.text
        currentItem.time = timeChosen.countDownDuration
        currentItem.completed = false
        tempItemName.text = currentItem.name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

