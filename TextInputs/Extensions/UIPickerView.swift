//
//  UIPickerView.swift
//  SKTextInputs
//
//  Created by Sergey Kostyan on 02.09.2018.
//

import UIKit

extension UIPickerView {
    
    func contains(_ component: Int) -> Bool {
        let componentsRange = 0..<numberOfComponents
        return componentsRange.contains(component)
    }
    
    func contains(_ row: Int, inComponent component: Int) -> Bool {
        guard contains(component) else { return false }
        let rowsRange = 0..<numberOfRows(inComponent: component)
        return rowsRange.contains(row)
    }
    
}
