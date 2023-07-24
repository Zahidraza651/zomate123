//
//  UIDatePicker.swift
//  B4U CABS
//
//  Created by Macbook Pro on 2020/9/25.
//  Copyright © 2020 Macbook Pro. All rights reserved.
//

import UIKit
extension UIDatePicker {
    func set15YearValidation() {
        let currentDate: Date = Date()
        var calendar: Calendar = Calendar(identifier: Calendar.Identifier.gregorian)
        calendar.timeZone = TimeZone(identifier: "UTC")!
        var components: DateComponents = DateComponents()
        components.calendar = calendar
        components.year = -15
        let maxDate: Date = calendar.date(byAdding: components, to: currentDate)!
        components.year = -150
        let minDate: Date = calendar.date(byAdding: components, to: currentDate)!
        self.minimumDate = minDate
        self.maximumDate = maxDate
    }
}
