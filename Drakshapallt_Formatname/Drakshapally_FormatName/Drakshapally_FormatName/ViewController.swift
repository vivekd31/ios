//
//  ViewController.swift
//  Drakshapally_FormatName
//
//  Created by Drakshapally,Vivek on 9/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickOfSubmit(_ sender: Any) {
        var FirstNameBox = firstNameTextField.text!
        var LastNameBox = lastNameTextField.text!
        
        displayLabel.text = "\(LastNameBox),"+" \(FirstNameBox)"
    }
    @IBAction func onClickOfReset(_ sender: Any) {
        
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        displayLabel.text = ""
        firstNameTextField.becomeFirstResponder()
    }
    
}

