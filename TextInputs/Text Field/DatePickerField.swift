//
//  DateTextField.swift
//  SwiftUtils
//
//  Created by Sergey Kostyan on 17.06.17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import UIKit

open class DatePickerField: ToolbarTextField, DateSelectionHandlerSettable {
    
    public var dateSelectionHandler: DatePickerFieldDateSelectionHandler?
    
    // MARK: - Lazy -
    
    public private(set) lazy var datePicker: UIDatePicker = { [unowned self] in
        return UIDatePicker(target: self, valueChangeHandler: #selector(datePickerValueChanged(_:)))
    }()
    
    // MARK: - Init -
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        inputView = datePicker
    }
    
    // MARK: - Private -
    
    @objc private func datePickerValueChanged(_ sender: UIDatePicker) {
        dateSelectionHandler?(self, sender, sender.date)
    }
    
}
