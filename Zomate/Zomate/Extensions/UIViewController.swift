//
//  UIViewController.swift
//  B4U CABS
//
//  Created by Macbook Pro on 2020/9/21.
//  Copyright © 2020 Macbook Pro. All rights reserved.
//

import UIKit
extension UIViewController {
//    func addStatusBarBackgroundView(_ viewController: UIViewController) -> Void {
//        let rect = CGRect(origin: CGPoint(x: 0, y: 0), size:CGSize(width: SCREEN_WIDTH, height:20))
//        let view : UIView = UIView.init(frame: rect)
//        view.backgroundColor = UIColor().headerColor
//        viewController.view?.addSubview(view)
//    }
    
//    func addSlideMenuGestures() {
//        self.slideMenuController()?.removeLeftGestures()
//        self.slideMenuController()?.removeRightGestures()
//        self.slideMenuController()?.addLeftGestures()
//        self.slideMenuController()?.addRightGestures()
//    }
//
//    func removeSlideMenuGestures() {
//        self.slideMenuController()?.removeLeftGestures()
//        self.slideMenuController()?.removeRightGestures()
//    }
    
    
    func setShadowOfViewWithBorder(view : UIView,borderColor : UIColor) {
        view.layer.borderColor = borderColor.cgColor
        view.layer.borderWidth = 1.0
        view.layer.cornerRadius = 5.0
        
        view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 2)
        view.layer.shadowOpacity = 1.0
        view.layer.shadowRadius = 2.0
        view.layer.masksToBounds = false
    }
    
    func setShadowOfViewWithOutBorder(view : UIView, isWithCornerRadius : Bool) {
        
        if isWithCornerRadius {
            view.layer.cornerRadius = 5.0
        }
        view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 2)
        view.layer.shadowOpacity = 1.0
        view.layer.shadowRadius = 2.0
        view.layer.masksToBounds = false
    }
    
    func setBorderAndRadius(radius : CGFloat, view : UIView, borderWidth : CGFloat, borderColor : UIColor) {
        
        view.layer.cornerRadius = radius
        view.layer.borderColor = borderColor.cgColor
        view.layer.borderWidth = borderWidth
        view.layer.masksToBounds = true
    }
    
    func UTCToLocalTime(date:String, yourFormat: String, expectedFormat: String) -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "EST")//.current//TimeZone(abbreviation: "UTC")
        dateFormatter.dateFormat = yourFormat//"yyyy-mm-dd HH:mm:ss"
        let postDate = dateFormatter.date(from: date)
        
        dateFormatter.dateFormat = expectedFormat//"h:mm a"
        //dateFormatter.timeZone = .current
        if postDate != nil {
            return dateFormatter.string(from: postDate!)
        }
        else{
            return "No time found"
        }
    }
    
    func timeAgoSinceDate(_ date:Date,currentDate:Date, numericDates:Bool) -> String {
        let calendar = Calendar.current
        let now = currentDate
        let earliest = (now as NSDate).earlierDate(date)
        let latest = (earliest == now) ? date : now
        let components:DateComponents = (calendar as NSCalendar).components([NSCalendar.Unit.minute , NSCalendar.Unit.hour , NSCalendar.Unit.day , NSCalendar.Unit.weekOfYear , NSCalendar.Unit.month , NSCalendar.Unit.year , NSCalendar.Unit.second], from: earliest, to: latest, options: NSCalendar.Options())
        
        if (components.year! >= 2) {
            return "\(components.year!) year ago"
        } else if (components.year! >= 1){
            if (numericDates){
                return "1 year ago"
            } else {
                return "Last year"
            }
        } else if (components.month! >= 2) {
            return "\(components.month!) month ago"
        } else if (components.month! >= 1){
            if (numericDates){
                return "1 month ago"
            } else {
                return "Last month"
            }
        } else if (components.weekOfYear! >= 2) {
            return "\(components.weekOfYear!) week ago"
        } else if (components.weekOfYear! >= 1){
            if (numericDates){
                return "1 week ago"
            } else {
                return "Last week"
            }
        } else if (components.day! >= 2) {
            return "\(components.day!) days ago"
        } else if (components.day! >= 1){
            if (numericDates){
                return "1 day ago"
            } else {
                return "Yesterday"
            }
        } else if (components.hour! >= 2) {
            return "\(components.hour!)h ago"
        } else if (components.hour! >= 1){
            if (numericDates){
                return "1 hour ago"
            } else {
                return "An hour ago"
            }
        } else if (components.minute! >= 2) {
            return "\(components.minute!) min ago"
        } else if (components.minute! >= 1){
            if (numericDates){
                return "1 min ago"
            } else {
                return "A minute ago"
            }
        } else if (components.second! >= 3) {
            return "\(components.second!) sec ago"
        } else {
            return "Just now"
        }
    }
    
//    func alertViewWithTitleAndMessage(_ viewController: UIViewController, message: String) -> Void {
//        let alert: UIAlertController = UIAlertController.init(title: AlertViewTitle, message: message, preferredStyle: .alert)
//        let hideAction: UIAlertAction = UIAlertAction.init(title: "Ok", style: .default, handler: nil)
//        alert.addAction(hideAction)
//        viewController.present(alert, animated: true, completion: nil)
//    }
//    
//    func alertViewWithErrorMessage(_ viewController: UIViewController) {
//        let alert: UIAlertController = UIAlertController.init(title: AlertViewTitle, message: ErrorMessage, preferredStyle: .alert)
//        let hideAstion: UIAlertAction = UIAlertAction.init(title: "Ok", style: .default, handler: nil)
//        alert.addAction(hideAstion)
//        viewController.present(alert, animated: true, completion: nil)
//    }
//    
//    func alertViewWithNoInternet(_ viewController: UIViewController) {
//        let alert: UIAlertController = UIAlertController.init(title: AlertViewTitle, message: NoInternet, preferredStyle: .alert)
//        let hideAstion: UIAlertAction = UIAlertAction.init(title: "Ok", style: .default, handler: nil)
//        alert.addAction(hideAstion)
//        viewController.present(alert, animated: true, completion: nil)
//    }
}
