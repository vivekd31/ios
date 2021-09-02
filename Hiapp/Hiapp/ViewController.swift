//
//  ViewController.swift
//  Hiapp
//
//  Created by Drakshapally,Vivek on 8/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputtext: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submit(_ sender: Any) {
        //Read the data from InputText
               var ipText = inputtext.text!
               //Assign it to DisplayLabel
               label.text = "Hi, \(ipText)!"
    }
    @IBAction func switchaction(_ sender: Any) {
        
    }
    
}

