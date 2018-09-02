//
//  ToolbarTextField.swift
//  SwiftUtils
//
//  Created by Sergey Kostyan on 18.06.17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import UIKit

open class ToolbarTextField: BaseTextField, DoneTitleSettable, DoneButtonHandlerSettable {
    
    public var doneButtonHandler: ToolbarDoneButtonHandler<ToolbarTextField>?
    
    @IBInspectable public var doneButtonTitle: String = "Done" {
        didSet { doneButton.title = doneButtonTitle }
    }
    
    // MARK: - Lazy -
    
    public private(set) lazy var toolbar: UIToolbar = {
        return UIToolbar(with: [UIBarButtonItem.flexibleSpaceButton(), doneButton])
    }()
    
    private lazy var doneButton: UIBarButtonItem = { [unowned self] in
        return UIBarButtonItem(title: doneButtonTitle, style: .plain, target: self, action: #selector(doneButtonPressed(_:)))
        }()
    
    // MARK: - Init -
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        inputAccessoryView = toolbar
    }
    
    // MARK: - Actions -
    
    @objc func doneButtonPressed(_ sender: UIBarButtonItem) {
        sendActions(for: .editingDidEndOnExit)
        doneButtonHandler?(self, sender)
    }
    
}
