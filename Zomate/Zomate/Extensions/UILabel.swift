//
//  UILabel.swift
//  B4U CABS
//
//  Created by Macbook Pro on 2020/9/21.
//  Copyright © 2020 Macbook Pro. All rights reserved.
//

import UIKit
extension UILabel{
    func heightForView(text:String, font:UIFont, width:CGFloat) -> CGFloat {
        let label: UILabel = UILabel.init(frame: CGRect(x: 0, y: 0, width: width, height: .greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = font
        label.text = text
        
        label.sizeToFit()
        return label.frame.height
    }
}
