//
//  PropertWrapper.swift
//  B4UGlobal
//
//  Created by mac on 1/28/21.
//

import Foundation
@propertyWrapper
struct EmailPropertyWrapper
{
    private var _value: String
    var wrappedValue: String
    {
        get
        {
            return isWrapperEmail(email: _value) ? _value : String()
        }
        set
        {
            _value = newValue
        }
    }

    init(wrappedValue: String) {
        _value = wrappedValue
    }

    private func isWrapperEmail(email: String) -> Bool {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-za-z]{2,64}"
        let pred = NSPredicate(format: "SELF MATCHES %@", regex)
        return pred.evaluate(with: email)
    }
}

struct User
{
      var name: String
    @EmailPropertyWrapper var email: String

    func validate() -> Bool
    {
        if(name.isEmpty || email.isEmpty)
        {
            debugPrint("name and a valid email is required and cannot be empty")
            return false
        }
        return true
    }

    func registerUser()
    {
        if(validate())
        {
            //saving user records code...
            debugPrint("User data saved")
        }
    }
}
