//
//  UIColor.swift
//  B4U CABS
//
//  Created by Macbook Pro on 2020/9/21.
//  Copyright © 2020 Macbook Pro. All rights reserved.
//

import UIKit
extension UIColor {
    var themeGrey: UIColor {
        return UIColor(named: "AppGreyColor")!
    }
    
    var themeShadowColor: UIColor {
        return UIColor(named: "AppShadowColor")!
    }
    var appShimmerColor:UIColor{
        return UIColor(named: "AppShimmerViewColor")!
    }
    
    var themePurpleColor: UIColor{
        return UIColor(named: "AppPurpleColor")!
    }
    
    var themePinkColor: UIColor {
        return UIColor(named: "AppPinkColor")!
    }
    
    var themeBorderColor: UIColor{
        return UIColor(named: "AppBorderColor")!
    }
    
    var themeLightGreyColor: UIColor{
        return UIColor(named: "AppLightGreyColor")!
    }
    
    var themeLightGreyBackGroundColor: UIColor{
        return UIColor(named: "AppLightGreyBackGroundColor")!
    }
    var AppGradiantColor: UIColor{
        return  UIColor.init(red:137,green:22,blue:123, alpha:1)
    }
    var AppGradiantColorBottom: UIColor{
        return  UIColor.init(red:220,green:0,blue:121, alpha:1)
    }
    
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat
        
        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])
            
            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255
                    
                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }
        return nil
    }
}

struct AppColor  {
    
    static  let  ApptopGradiant:UIColor = UIColor.init(red:137,green:22,blue:123, alpha:1)
    static  let  AppGradiantColorBottom: UIColor = UIColor.init(red:220,green:0,blue:121, alpha:1)
    
}
