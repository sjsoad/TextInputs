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
    
    public private(set) lazy var picker: UIPickerView = {
        return UIPickerView()
    }()
    
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
    
//    // MARK: - Private -
//
//    private func selectRows(at indexPathes: [IndexPath]) {
//        guard !indexPathes.isEmpty else {
//            guard picker.numberOfComponents > 0, picker.numberOfRows(inComponent: 0) > 0 else { return }
//            picker.selectRow(0, inComponent: 0, animated: true)
//            return }
//        for indexPath in indexPathes {
//            guard indexPath.row >= 0, indexPath.section < picker.numberOfComponents,
//                indexPath.row < picker.numberOfRows(inComponent: indexPath.section) else { return }
//        }
//    }
    
}
