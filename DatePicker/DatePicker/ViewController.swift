//
//  ViewController.swift
//  DatePicker
//
//  Created by 박민욱 on 08/01/2019.
//  Copyright © 2019 박민욱. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var alarmTime: String!
    var currentTime: String!
    
    @IBOutlet var background: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm aaa"
        alarmTime = formatter.string(from: datePickerView.date)
        lblPickerTime.text =
            "선택시간: " + alarmTime
    }
    
    @objc func updateTime() {
//        lblCurrentTime.text = String(count)
//        count = count + 1
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm aaa"
        currentTime = formatter.string(from: date as Date)
        lblCurrentTime.text = "현재시간: " + currentTime
        
        if(alarmTime == currentTime){
            background.backgroundColor = UIColor.red
        }else{
            background.backgroundColor = UIColor.white
        }
    }
    
}

