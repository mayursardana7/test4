//
//  ViewController.swift
//  Controller
//
//  Created by Yogesh Patel on 16/11/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var btnSlider: UISlider!
    @IBOutlet weak var btnStepper: UIStepper!
    @IBOutlet weak var firstnameField: UITextField!
    @IBOutlet weak var lastnameField: UITextField!
    @IBOutlet weak var btnSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnSwitch.isOn = false
     //   view.backgroundColor = .systemIndigo
        
        btnSlider.value = 10
        btnSlider.minimumValue = 0
        btnSlider.maximumValue = 20
        
        btnStepper.value = 10
        btnStepper.minimumValue = 0
        btnStepper.maximumValue = 20
        btnStepper.stepValue = 5
        
        firstnameField.delegate = self
        lastnameField.delegate = self
        
//        [firstnameField, lastnameField].forEach { txt in
//            txt?.delegate = self
//        }
    }

    @IBAction func btnSwitchTapped(_ sender: UISwitch) {
        if sender.isOn{
            view.backgroundColor = .systemIndigo
        }else{
            view.backgroundColor = .white
        }
    }
    
    @IBAction func btnSliderTapped(_ sender: UISlider) {
        print(Int(sender.value))
    }
    
    @IBAction func btnStepperTapped(_ sender: UIStepper) {
        print(Int(btnStepper.value))
        print("Hello testing")
    }
    
    @IBAction func btnSaveTapped(_ sender: UIButton) {
//        firstnameField.resignFirstResponder()
//        lastnameField.resignFirstResponder()
        
        let v1 = Int(firstnameField.text ?? "0") ?? 0
        let v2 = Int(lastnameField.text ?? "0") ?? 0
        print(v1 + v2)
//        let v1 = Int(firstnameField.text)
        view.endEditing(true)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
    }
}

/*
 TASK:
 1. Value change get karna hai - textfield jese write karunga wese tumko get karna hai
 
 Solution:
 1. AddTarget
 2. Action
 
 - Value change hote aapko addition karna hai dono textfield ka - firstname and lastname - change mai karna hai save button pai nahi.
 
 - Empty condition check karni hai - dono textfield ke pass value honi chahiye!
 */
