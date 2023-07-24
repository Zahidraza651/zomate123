//
//  OTPVerificationVC.swift
//  Zomate
//
//  Created by apple on 20/07/2023.
//

import UIKit

class OTPVerificationVC: UIViewController {
    
    @IBOutlet weak var frstTF : UITextField!
    @IBOutlet weak var secondTF : UITextField!
    @IBOutlet weak var thirdTF : UITextField!
    @IBOutlet weak var fourthTF : UITextField!
    @IBOutlet var otpTextFields: [UITextField]!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupOTPTextFields()
        // Do any additional setup after loading the view.
    }
    
    func setupOTPTextFields() {
            for (index, textField) in otpTextFields.enumerated() {
                textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
                textField.tag = index
                textField.textContentType = .oneTimeCode
            }
        }

        @objc func textFieldDidChange(_ textField: UITextField) {
            let maxLength = 1
            if let text = textField.text, text.count >= maxLength {
                if let nextTextField = view.viewWithTag(textField.tag + 1) as? UITextField {
                    nextTextField.becomeFirstResponder()
                } else {
                    textField.resignFirstResponder()
                }
            }

            // Check if all OTP text fields have values, and if so, dismiss the keyboard
            let allTextFieldsFilled = otpTextFields.allSatisfy { $0.text?.isEmpty == false }
            if allTextFieldsFilled {
            view.endEditing(true) // Dismiss the keyboard
            }
        }
    
    @IBAction func SubmitBtn(){
        
    }
    
    @IBAction func ResendOtpBtn(){
        
    }

}
