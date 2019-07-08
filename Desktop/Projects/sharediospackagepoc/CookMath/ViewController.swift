//
//  ViewController.swift
//  CookMath
//
//  Created by Vivek Agravat on 5/07/19.
//  Copyright © 2019 ClubWare. All rights reserved.
//

import UIKit
import MathOperations

class ViewController: UIViewController {
    
    @IBOutlet weak var firstValueTextField: UITextField!
    @IBOutlet weak var secondValueTextField: UITextField!
    @IBOutlet weak var resultValueTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var mathOperationLabel: UILabel!
    
    @IBAction func addButtonTap(_ sender: UIButton) {
        guard let values = getIntValuesFromTextFields() else { return }
        resultValueTextField.text = String(MathOperations().add(value: values.firstValue, to: values.secondValue))
    }
    
    @IBAction func subtractButtonTap(_ sender: UIButton) {
        guard let values = getIntValuesFromTextFields() else { return }
        resultValueTextField.text = String(MathOperations().subtract(value: values.firstValue, to: values.secondValue))
    }
    
    @IBAction func multipleButtonTap(_ sender: UIButton) {
        guard let values = getIntValuesFromTextFields() else { return }
        resultValueTextField.text = String(MathOperations().multiply(value: values.firstValue, to: values.secondValue))
    }
    
    @IBAction func divisionButtonTap(_ sender: UIButton) {
        guard let values = getIntValuesFromTextFields() else { return }
        resultValueTextField.text = String(MathOperations().divide(value: values.firstValue, to: values.secondValue))
    }
    
    @IBAction func moduloButtonTap(_ sender: UIButton) {
        guard let values = getIntValuesFromTextFields() else { return }
        resultValueTextField.text = String(MathOperations().modulo(value: values.firstValue, to: values.secondValue))
    }
    
    func getIntValuesFromTextFields() -> (firstValue: Int, secondValue: Int)? {
        errorLabel.text = "Can not get values, Please enter proper values."
        if !firstValueTextField.text!.isEmpty, !secondValueTextField.text!.isEmpty {
            guard
                let firstIntValue = Int(firstValueTextField.text!),
                let secondIntValue = Int(secondValueTextField.text!)
                else {return nil}
            errorLabel.text = ""
            return (firstIntValue, secondIntValue)
        }
        return nil
    }

}


