//
//  ViewController.swift
//  SwiftTimerTutorial
//
//  Created by Keri Clowes on 3/15/16.
//  Copyright © 2016 Keri Clowes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var countingLabel: UILabel!

    @IBAction func startButton(sender: AnyObject) {
        SwiftTimer = NSTimer.scheduledTimerWithTimeInterval(
            1,
            target:self,
            selector: Selector("updateCounter"),
            userInfo: nil,
            repeats: true
        )
    }

    @IBAction func pauseButton(sender: AnyObject) {
        SwiftTimer.invalidate()
    }

    @IBAction func clearButton(sender: AnyObject) {
        SwiftTimer.invalidate()
        SwiftCounter = 0
        countingLabel.text = String(SwiftCounter)
    }

    var SwiftTimer = NSTimer()

    var SwiftCounter = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        countingLabel.text = String(SwiftCounter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func updateCounter() {
        countingLabel.text = String(SwiftCounter++)
    }
}

