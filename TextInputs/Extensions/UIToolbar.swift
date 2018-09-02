//
//  UIToolbar.swift
//  SKTextInputs
//
//  Created by Sergey Kostyan on 02.09.2018.
//

import UIKit

extension UIToolbar {
    
    convenience init(with buttons: [UIBarButtonItem]) {
        self.init()
        self.setItems(buttons, animated: false)
    }
    
}
