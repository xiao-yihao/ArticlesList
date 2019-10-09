//
//  UITableView+.swift
//  MoyaTest
//
//  Created by 肖 怡豪 on 2019/10/08.
//  Copyright © 2019 肖 怡豪. All rights reserved.
//

import UIKit

extension UITableView {
    func registerCell<T: UITableViewCell>(type: T.Type) {
        register(type.self, forCellReuseIdentifier: type.className)
    }
    
    func dequeueCell<T: UITableViewCell>(type: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: type.className, for: indexPath) as! T
    }
}

public extension NSObject {
    class var className: String {
        return String(describing: self)
    }
}
