//
//  UIDatePicker.swift
//  SKTextInputs
//
//  Created by Sergey Kostyan on 02.09.2018.
//

import UIKit

extension UIDatePicker {
    
    convenience init(target: Any, valueChangeHandler: Selector) {
        self.init()
        self.addTarget(target, action: valueChangeHandler, for: .valueChanged)
    }
    
}
