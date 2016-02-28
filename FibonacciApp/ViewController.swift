//
//  ViewController.swift
//  FibonacciApp
//
//  Created by Jake Dobson on 2/21/16.
//  Copyright © 2016 Jake Dobson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var includesZeroSwitch: UISwitch!
    @IBOutlet weak var includesZeroLabel: UILabel!
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    @IBOutlet weak var numberOfItemsLabel: UILabel!

    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)//instantiation of fibonacci sequence property for ViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        updateFibonacciSequence()
    }
    
    @IBAction func updateFibonacciSequence() {
        
        if includesZeroSwitch.on {
            numberOfItemsSlider.maximumValue = 94
            includesZeroLabel.text = "Yes"
        } else {
            numberOfItemsSlider.maximumValue = 93
            includesZeroLabel.text = "No"
        }
        
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt64(numberOfItemsSlider.value), includesZero: includesZeroSwitch.on)
        
        textView.text = fibonacciSequence.values.description
        
        includesZeroLabel.text = includesZeroSwitch.on ? "Yes" : "No"
        
        numberOfItemsLabel.text = String(Int(numberOfItemsSlider.value))
    }
}

