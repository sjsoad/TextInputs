//
//  PickerTextField.swift
//  SwiftUtils
//
//  Created by Sergey Kostyan on 18.06.17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import UIKit
import SKPickerViewManager

open class PickerViewField: ToolbarTextField, PickerViewFieldReloadable {

    // MARK: - Lazy -
    
    public private(set) lazy var picker: UIPickerView = UIPickerView()
    
    // MARK: - Init -
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        inputView = picker
    }
    
    // MARK: - PickerViewFieldReloadable -
    
    public func reload(with manager: PickerManager) {
        picker.dataSource = manager
        picker.delegate = manager
        picker.reloadAllComponents()
    }
    
    public func select(_ row: Int, inComponent component: Int) {
        guard picker.contains(row, inComponent: component) else { return }
        picker.selectRow(row, inComponent: component, animated: true)
        picker.delegate?.pickerView?(picker, didSelectRow: row, inComponent: component)
    }

}
