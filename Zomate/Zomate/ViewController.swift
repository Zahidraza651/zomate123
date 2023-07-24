//
//  ViewController.swift
//  Zomate
//
//  Created by Muhammad Irfan Zafar on 18/07/2023.
//

import UIKit
import TextFieldEffects

@available(iOS 13.4, *)
class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet private var fNmeTF : [TextFieldEffects]!
    @IBOutlet private var lastNmeTF : [TextFieldEffects]!
    @IBOutlet weak var dateOfBirthTF : UITextField!
    @IBOutlet weak var genderTF : UITextField!
    @IBOutlet weak var imageView: UIImageView!
   
    
    let imagePicker = UIImagePickerController()
    let genderData = ["Male", "Female"]
    let genderPicker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(DOB(datePicker:)), for: UIControl.Event.valueChanged)
        datePicker.frame.size = CGSize(width: 0, height: 300)
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.maximumDate = Date()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissDatePicker))
        view.addGestureRecognizer(tapGesture)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        genderData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genderData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genderTF.text = genderData[row]
    }
    
    //DatePicker Selector
    @objc func DOB(datePicker : UIDatePicker){
        dateOfBirthTF.text = formatDate(date: Date())
        dateOfBirthTF.text = formatDate(date: datePicker.date)
    }
    
    //Tap Gesture
    @objc func dismissDatePicker() {
        // Resign the first responder status of the text field, which will dismiss the date picker
        dateOfBirthTF.resignFirstResponder()
        genderTF.resignFirstResponder()
    }
    
    func formatDate(date : Date) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd yyyy"
        return formatter.string(from: date)
    }
    
    @IBAction func backBtn(_ sender:UIButton){
        
    }
    
    @IBAction func continueBtn(_ sender:UIButton){
        
    }
    
    @IBAction func prfleImgBtn(_ sender: UIButton){
        openGallery()
    }
    
    func openGallery() {
            // Check if the photo library is available
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
                imagePicker.sourceType = .photoLibrary
                // Present the image picker controller
                present(imagePicker, animated: true, completion: nil)
            } else {
                print("Photo library is not available.")
            }
        }
    

        // MARK: - UIImagePickerControllerDelegate Methods

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            // Handle the selected image
            if let pickedImage = info[.originalImage] as? UIImage {
                imageView.image = pickedImage
            }
            // Dismiss the image picker controller
            picker.dismiss(animated: true, completion: nil)
        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            // Dismiss the image picker controller when the user cancels
            picker.dismiss(animated: true, completion: nil)
        }
}

