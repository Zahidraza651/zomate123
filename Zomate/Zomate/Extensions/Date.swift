//
//  Date.swift
//  B4U CABS
//
//  Created by Macbook Pro on 2020/9/21.
//  Copyright © 2020 Macbook Pro. All rights reserved.
//

import UIKit
extension Date {
    /// Returns the amount of years from another date
    func years(from date: Date) -> Int {
        return Calendar.current.dateComponents([.year], from: date, to: self).year ?? 0
    }
    /// Returns the amount of months from another date
    func months(from date: Date) -> Int {
        return Calendar.current.dateComponents([.month], from: date, to: self).month ?? 0
    }
    /// Returns the amount of weeks from another date
    func weeks(from date: Date) -> Int {
        return Calendar.current.dateComponents([.weekOfYear], from: date, to: self).weekOfYear ?? 0
    }
    /// Returns the amount of days from another date
    func days(from date: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: date, to: self).day ?? 0
    }
    /// Returns the amount of hours from another date
    func hours(from date: Date) -> Int {
        return Calendar.current.dateComponents([.hour], from: date, to: self).hour ?? 0
    }
    /// Returns the amount of minutes from another date
    func minutes(from date: Date) -> Int {
        return Calendar.current.dateComponents([.minute], from: date, to: self).minute ?? 0
    }
    /// Returns the amount of seconds from another date
    func seconds(from date: Date) -> Int {
        return Calendar.current.dateComponents([.second], from: date, to: self).second ?? 0
    }
    
    func yearsBetweenDate(startDate: Date, endDate: Date) -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year], from: startDate, to: endDate)
        return components.year!
    }
    
    /// Returns the a custom time interval description from another date
    func offset(from date: Date) -> String {
        if years(from: date)   > 0 { return "\(years(from: date)) years ago"}
        if months(from: date)  > 0 { return "\(months(from: date)) month ago"}
        if weeks(from: date)   > 0 { return "\(weeks(from: date)) weeks ago"}
        if days(from: date)    > 0 { return "\(days(from: date)) days ago"}
        if hours(from: date)   > 0 { return "\(hours(from: date)) hours ago"}
        if minutes(from: date) > 0 { return "\(minutes(from: date)) minutes ago"}
        if seconds(from: date) > 0 { return "few seconds ago"}
        return ""
    }
    
    func toLocalTime() -> Date {
        let timeZone = NSTimeZone.local
        let seconds: TimeInterval = Double(timeZone.secondsFromGMT(for: self as Date))
        let localDate = Date(timeInterval: seconds, since: self as Date)
        return localDate
    }
    
    func getDayOfWeek(_ today:String, tag: Int) -> Int? {
        let formatter = DateFormatter()
        if tag == 0 {
            formatter.dateFormat = "yyyy-MM-dd HH:mm a"
        }
        else {
            formatter.dateFormat = "yyyy-MM-dd"
        }
        guard let todayDate = formatter.date(from: today) else { return nil }
        let myCalendar = Calendar(identifier: .gregorian)
        let weekDay = myCalendar.component(.weekday, from: todayDate)
        return weekDay
    }
    
    func daySuffix(from date: Date) -> String {
        let calendar = Calendar.current
        let dayOfMonth = calendar.component(.day, from: date)
        switch dayOfMonth {
        case 1, 21, 31: return "st"
        case 2, 22: return "nd"
        case 3, 23: return "rd"
        default: return "th"
        }
    }
    
    func toString() -> String {
        //March 15, 2017 at 5.30 PM
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd hh:mm:ss a"
        return dateFormatter.string(from: self)
    }
}
