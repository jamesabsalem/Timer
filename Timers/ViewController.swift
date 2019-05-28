//
//  ViewController.swift
//  Timers
//
//  Created by LIN2 on 5/28/19.
//  Copyright © 2019 LIN2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    var timer = Timer()
    var counter = 0 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = String(counter)
    }

    @IBAction func start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func restart(_ sender: Any) {
        timer.invalidate()
        counter = 0
        label.text = String(counter)
    }
    
    @objc func updateTimer (){
        counter += 1
        label.text = String(counter)
    }
}

