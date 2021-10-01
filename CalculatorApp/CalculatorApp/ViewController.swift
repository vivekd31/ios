//
//  ViewController.swift
//  CalculatorApp
//
//  Created by student on 9/30/21.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var Lastnumber: UILabel!
    
        var number1=""
        var number2=""
        var result=""
        var operation=""
        var opChanged = false
        var currentNumber2 = ""
        var inChainmode = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
  

    @IBAction func AC(_ sender: Any) {
        clearAll()
                
            }
            func clearAll(){
                number2 = ""
                number1 = ""
                opChanged = false
                operation = ""
                currentNumber2 = ""
                Lastnumber.text = "0"
                Lastnumber.textColor = .red
                inChainmode=false
            }
            
            func setData(_ number: String){
                if Lastnumber.text == "0"{
                    Lastnumber.text = ""
                    Lastnumber.textColor = .black
                }
                if !opChanged {
                    Lastnumber.text! += number
                    number1 += number
                }else{
                    print(inChainmode)
                    if !inChainmode {
                        Lastnumber.text! += number
                        number2 += number
                    }else {
                        Lastnumber.text = ""
                        Lastnumber.text! += number
                        number2 += number
                    }
                }
            }
                
                func calTemp(_ operation:String)->String {
                    print("\(number1),\(number2)")
                    if number1 != "" && number2 != ""{
                        if operation == "+"{
                            number1 = String(Double(number1)! + Double(number2)!)
                            currentNumber2 = number2
                            number2 = ""
                            return String(number1)
                            //                return String(Double(number1)! + Double(number2)!)
                        }
                        if operation == "-"{
                            number1 = String(Double(number1)! - Double(number2)!)
                            currentNumber2 = number2
                            number2 = ""
                            return String(number1)
                        }
                        if operation == "*"{
                            number1 = String(Double(number1)! * Double(number2)!)
                            currentNumber2 = number2
                            number2 = ""
                            return String(number1)
                        }
                        if operation == "/"{
                            number1 = String(Double(number1)! / Double(number2)!)
                            currentNumber2 = number2
                            number2 = ""
                            return String(number1)
                        }
                    }
                    return ""
                }
                
                func resultFormatter(_ result:String)->String {
                    let value = Double(result)!
                    var resultStr = String(round(value * 100000) / 100000.0)
                    
                    if resultStr.contains(".0"){
                        resultStr.removeSubrange(resultStr.index(resultStr.endIndex, offsetBy: -2)..<resultStr.endIndex)
                    }
                    
                    return resultStr
    }
    @IBAction func C(_ sender: Any) {
        number2 = ""
    }
    
    @IBAction func plusorminus(_ sender: Any) {
        //        print("The nsns \(number1)")
        if number1 != "" {
            
            Lastnumber.text = "-" + Lastnumber.text!
            number1 = "\(Lastnumber.text!)"
            
            print("number 1 is \(number1)")
            print("number 2 is \(number2)")
        }
        else{
            Lastnumber.text = "-" + Lastnumber.text!
            number2 = "\(Lastnumber.text!)"
            print("number 1 is \(number1)")
            print("number 2 is \(number2)")
        }
    }
    @IBAction func divide(_ sender: Any) {
        let temp = calTemp(operation)
        operation = "/"
      Lastnumber.text = (temp != "") ? resultFormatter(temp) : ""
        if temp != "" {
            //            inChainmode = true
            if number2 != ""{
                inChainmode = true
                //            number1 = temp
                if opChanged {
                    result = String(Double(temp)! / Double(number2)!)
                    print(result)
                    if result == "inf"{
                      Lastnumber.text! = "Error"
                    }else{
                      Lastnumber.text! = resultFormatter(result)
                    }
                }
            }
        }
        opChanged = true
        
    }
    @IBAction func seven(_ sender: Any) {
        setData("7")
    }
    @IBAction func eight(_ sender: Any) {
        setData("8")
    }
    @IBAction func nine(_ sender: Any) {
        setData("9")
    }
    @IBAction func multiplication(_ sender: Any) {
        let temp = calTemp(operation)
        print("temp is \(temp)")
        operation = "*"
        currentNumber2=""
    Lastnumber.text = (temp != "") ? resultFormatter(temp) : ""
        //        number1=temp;
        //        if temp != ""{
        //            number2=""
        //
        //        }
        opChanged=true
    }
    @IBAction func four(_ sender: Any) {
        setData("4")
    }
    @IBAction func five(_ sender: Any) {
        setData("5")
    }
    @IBAction func six(_ sender: Any) {
        setData("6")
    }
    @IBAction func minus(_ sender: Any) {
        let temp = calTemp(operation)
        operation = "-"
       Lastnumber.text = (temp != "") ? resultFormatter(temp) : ""
        if temp != "" {
            //            inChainmode = true
            if number2 != ""{
                inChainmode = true
                currentNumber2 = number2;
                if opChanged {
                    result = String(Double(temp)! - Double(number2)!)
                   Lastnumber.text! = resultFormatter(result)
                }
            }
        }
        opChanged = true
        
    }
    @IBAction func one(_ sender: Any) {
        setData("1")
    }
    @IBAction func two(_ sender: Any) {
        setData("2")
    }
    @IBAction func three(_ sender: Any) {
        setData("3")
    }
    @IBAction func plus(_ sender: Any) {
        let temp = calTemp(operation)
        print("temp is \(temp)")
        operation = "+"
        currentNumber2=""
    Lastnumber.text = (temp != "") ? resultFormatter(temp) : ""
        //        number1=temp;
        //        if temp != ""{
        //            number2=currentNumber2
        //        }
        opChanged=true
    }
    @IBAction func zero(_ sender: Any) {
        setData("0")
    }
    @IBAction func squareroot(_ sender: Any) {
        if Lastnumber.text == "" || Lastnumber.text == "0"{
            return
        }
        let numberRoot = Lastnumber.text
        Lastnumber.text = resultFormatter(String(Double(numberRoot!)!.squareRoot()))
        number1 = Lastnumber.text!
        number2 = ""
    }
    @IBAction func point(_ sender: Any) {
        setData(".")
    }
    @IBAction func isequalto(_ sender: Any) {
        var res = ""
        switch operation {
        case "+":
            
            if currentNumber2 != "" {
                res = String(Double(number1)! + Double(currentNumber2)!)
                Lastnumber.text = resultFormatter(res)
                 number2 = currentNumber2
            }else{
                res = String(Double(number1)! + Double(number2)!)
                Lastnumber.text = resultFormatter(res)
            }
            number1 = res
            
            break
        case "*":
            if currentNumber2 != "" {
                res = String(Double(number1)! * Double(currentNumber2)!)
                Lastnumber.text = resultFormatter(res)
                //                number2 = ""
            }else{
                res = String(Double(number1)! * Double(number2)!)
                Lastnumber.text = resultFormatter(res)
            }
            number1 = res
            
            break
        case "-":
            if currentNumber2 != "" {
                res = String(Double(number1)! - Double(currentNumber2)!)
                Lastnumber.text = resultFormatter(res)
                //                number2 = ""
            }else{
                res = String(Double(number1)! - Double(number2)!)
                Lastnumber.text = resultFormatter(res)
            }
            number1 = res
            //            number2 = ""
            break
        case "/":
            if Lastnumber.text == "Error"{
                clearAll()
            }else{
                if currentNumber2 != "" {
                    res = String(Double(number1)! / Double(currentNumber2)!)
                    if res == "inf"{
                        Lastnumber.text! = "Error"
                        return
                    }else{
                        Lastnumber.text = resultFormatter(res)
                        //                        number2 = ""
                    }
                }else{
                    res = String(Double(number1)! / Double(number2)!)
                    if res == "inf"{
                        Lastnumber.text! = "Error"
                        return
                    }else{
                        Lastnumber.text = resultFormatter(res)
                    }
                }
                number1 = res
                //                number2 = ""
            }
            break
        default:
            print("Nothing")
        }
    }
    
}

