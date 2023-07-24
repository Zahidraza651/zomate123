//
//  LoginVC.swift
//  Zomate
//
//  Created by apple on 20/07/2023.
//

import UIKit
import CountryPickerView


class LoginVC: UIViewController {

    @IBOutlet weak var countryPickerView : CountryPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        countryPickerView.showCountryCodeInView = false

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SubmitBtn(){}
    
    @IBAction func FbSignInBtn(){}
    
    @IBAction func GmailSignInBtn(){}

}
