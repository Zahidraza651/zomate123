//
//  String.swift
//  BaseProject
//
//  Created by Muneeb Ali on 22/06/2020.
//  Copyright © 2020 Muneeb Ali. All rights reserved.
//

import UIKit
extension String {
    
    //MARK: - Variables
    var length: Int {
        return self.count
    }
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    
    //MARK: - Functions
    func fromBase64() -> String {
        let data = Data(base64Encoded: self, options: NSData.Base64DecodingOptions(rawValue: 0))
        return String(data: data!, encoding: String.Encoding.utf8)!
    }
    
    
    func toBase64() -> String {
        let data = self.data(using: String.Encoding.utf8)
        return data!.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
    }
    
    func createURL() -> URL{
        let urlString  = self.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
        if let url = URL(string: urlString){
            return url
        }
        return  URL(string: "urlString")!
    }
    
    func isValidEmail() -> Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        let result =  emailPredicate.evaluate(with: self)
        return result
    }
    
    func isValidPhoneNum() -> Bool {
        let PHONE_REGEX = "^3[0-9]{6,11}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: self)
        print(result)
        return result
    }
    func isValidNum() -> Bool {
        let PHONE_REGEX = "^[0-9]"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: self)
        return result
    }
    
    func isValidName() -> Bool{
        let NAME_REGEX = "(?<! )[-a-zA-Z' ]{2,26}"
        let nameTest = NSPredicate(format: "SELF MATCHES %@", NAME_REGEX)
        let result =  nameTest.evaluate(with: self)
        return result
    }
    
    func trim() -> String {
        return self.trimmingCharacters(in: NSCharacterSet.whitespaces)
    }
    
    var themeRegularFontName : String {
        return "Poppins-Regular"
    }
    
    var themeBoldFontName : String {
        return "Poppins-Bold"
    }
    
    var themeLightFontName : String {
        return "Poppins-Light"
    }
    
    var themeMediumFontName : String {
        return "Poppins-Medium"
    }
    
    var themeSemiBoldFontName : String {
        return "Poppins-SemiBold"
    }
    
    func replace(_ string:String, replacement:String) -> String {
        return self.replacingOccurrences(of: string, with: replacement, options: .literal
            , range: nil)
    }
    
    func trunc(length: Int, trailing: String = "…") -> String {
        return (self.count > length) ? self.prefix(length-3) + trailing : self
    }
    
    func removeWhitespace() -> String {
        return self.replace(" ", replacement: "")
    }
    
    func convertHtml() -> NSAttributedString{
        guard let data = data(using: .utf8) else { return NSAttributedString() }
        do{
            return try NSAttributedString(data: data,
                                          options: [.documentType: NSAttributedString.DocumentType.html,
                                                    .characterEncoding: String.Encoding.utf8.rawValue],
                                          documentAttributes: nil)
        }catch{
            return NSAttributedString()
        }
    }
    
    func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        
        return boundingBox.height
    }
    
    func isValidPassword() -> Bool {
        let characterset = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLKMNOPQRSTUVWXYZ0123456789")
        
        if rangeOfCharacter(from: characterset.inverted) != nil && length >= 8 {
            return true
            
        } else {
            return false
        }
    }
    
    mutating func replaceFirstOccurrence(original: String, with newString: String) {
        if let range = self.range(of: original) {
            replaceSubrange(range, with: newString)
        }
    }
}
