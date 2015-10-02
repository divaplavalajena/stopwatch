//
//  ViewController.swift
//  Stopwatch
//
//  Created by Jena Grafton on 10/2/15.
//  Copyright © 2015 Bella Voce Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 0
    
    
    func increaseTimer() {
        time++
        timerLabel.text = "\(time)"
    }
    
    var timer = NSTimer()

    
    @IBOutlet var timerLabel: UILabel!
    
    @IBAction func startButton(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
        
        timer.invalidate()
    }
    

    @IBAction func resetButton(sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
        
        timerLabel.text = "0"
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

