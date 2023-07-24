//
//  Float.swift
//  B4U CABS
//
//  Created by Macbook Pro on 2020/10/21.
//  Copyright © 2020 Macbook Pro. All rights reserved.
//

import Foundation
extension FloatingPoint {
    var degreesToRadians: Self { return self * .pi / 180 }
    var radiansToDegrees: Self { return self * 180 / .pi }
}
