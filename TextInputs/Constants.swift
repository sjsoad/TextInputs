//
//  Constants.swift
//  SKTextInputs
//
//  Created by Sergey Kostyan on 02.09.2018.
//

import Foundation

public typealias DatePickerFieldDateSelectionHandler = ((_ field: UITextField, _ picker: UIDatePicker, _ date: Date) -> Void)
public typealias ToolbarDoneButtonHandler<FieldClass> = ((_ field: FieldClass, _ sender: UIBarButtonItem) -> Void)
