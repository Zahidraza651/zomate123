//
//  Data.swift
//  B4U CABS
//
//  Created by Macbook Pro on 2020/9/21.
//  Copyright © 2020 Macbook Pro. All rights reserved.
//

import Foundation
extension Data {
    func hexString() -> String {
        var bytesPointer: UnsafeBufferPointer<UInt8> = UnsafeBufferPointer(start: nil, count: 0)
        self.withUnsafeBytes { (bytes) in
            bytesPointer = UnsafeBufferPointer<UInt8>(start: UnsafePointer(bytes), count:self.count)
        }
        let hexBytes = bytesPointer.map { return String(format: "%02hhx", $0) }
        return hexBytes.joined()
    }
}
