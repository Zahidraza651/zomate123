//
//  UIFont.swift
//  BaseProject
//
//  Created by Muneeb Ali on 22/06/2020.
//  Copyright © 2020 Muneeb Ali. All rights reserved.
//

import UIKit

extension UIFont {
    
    final class func PopinsLight(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "Poppins-Light", size: size)!
    }

    final class func PopinsMedium(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "Poppins-Medium", size: size)!
    }
    
    final class func PopinsBold(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "Poppins-Bold", size: size)!
    }
    
}
