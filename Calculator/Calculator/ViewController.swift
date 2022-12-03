//
//  ViewController.swift
//  Calculator
//
//  Created by Musab Bahadır Bayram on 24.11.2022.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var firstValue: UITextField!
    
    @IBOutlet weak var secondValue: UITextField!
    
    @IBOutlet weak var lastValue: UITextField!
    
    
    var fvalue = 0.0
    var svalue = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumOpt(_ sender: UIButton) {
        fvalue = Double(firstValue.text!)!
        svalue = Double(secondValue.text!)!
        lastValue.text = String(Int(fvalue + svalue))
    }
    
    @IBAction func divideOpt(_ sender: UIButton) {
        fvalue = Double(firstValue.text!)!
        svalue = Double(secondValue.text!)!
        lastValue.text = String(fvalue / svalue)
    }
    
    @IBAction func subOpt(_ sender: UIButton) {
        fvalue = Double(firstValue.text!)!
        svalue = Double(secondValue.text!)!
        lastValue.text = String(Int(fvalue - svalue))
    }
    
    @IBAction func impOpt(_ sender: UIButton) {
        fvalue = Double(firstValue.text!)!
        svalue = Double(secondValue.text!)!
        lastValue.text = String(Int(fvalue * svalue))
    }
    
}

