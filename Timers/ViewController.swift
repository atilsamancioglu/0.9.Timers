//
//  ViewController.swift
//  Timers
//
//  Created by Atıl Samancıoğlu on 07/12/2016.
//  Copyright © 2016 Atıl Samancıoğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        counter = 5
        timeLabel.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunction), userInfo: nil, repeats: true)
        
        
    }
    
    func timerFunction() {
        
        timeLabel.text = String(counter)
        
        counter = counter - 1
        
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Your time is done!"
        }
    
    }

 


}

