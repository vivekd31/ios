//
//  ViewController.swift
//  calculatorapp
//
//  Created by Drakshapally,Vivek on 9/2/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var operand1: Double = -1.1
    var operand2: Double = -1.1
    var calcOperator:Character = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button6(_ sender: Any) {
        display.text = display.text! + "6"
              if operand1 == -1.1{
                  operand1 = 6
              }
              else{
                  operand2 = 6
              }
    }
    
    @IBAction func button8(_ sender: Any) {
        display.text = display.text! + "8"
                if operand2 == -1.1{
                    operand2 = 8
                }
                else{
                    operand1 = 8
                }
    }
    
    @IBAction func buttonminus(_ sender: Any) {
        display.text = display.text! + "-"
                if calcOperator == " "{
                    calcOperator = "-"
                }
    }
    
    @IBAction func buttonequals(_ sender: Any) {
        display.text = display.text! + "="
                if calcOperator == "-"{
                    display.text = display.text! + "\(operand1-operand2)"
                }
    }
    
}

