//
//  UICollectionView+Extensions.swift
//  AoneCamera
//
//  Created by Sweta Surbhi on 25/06/19.
//  Copyright © 2019 Sweta Surbhi. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(cellType: T.Type, bundle: Bundle? = nil) {
        let className = cellType.className
        let nib = UINib(nibName: className, bundle: bundle)
        register(nib, forCellWithReuseIdentifier: className)
    }
    
    func register<T: UICollectionViewCell>(cellTypes: [T.Type], bundle: Bundle? = nil) {
        cellTypes.forEach { register(cellType: $0, bundle: bundle) }
    }

    func dequeueReusableCell<T: UICollectionViewCell>(with type: T.Type, for indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withReuseIdentifier: type.className, for: indexPath) as! T
    }

    func reloadDataAsync() {
        DispatchQueue.main.async{
            self.reloadData()
        }
    }
}

extension NSObject {
    class var className: String {
        return String(describing: self)
    }
}
