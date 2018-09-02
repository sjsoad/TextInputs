//
//  ToolbarTextView.swift
//  SwiftUtils
//
//  Created by Sergey Kostyan on 31.03.2018.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

open class ToolbarTextView: UITextView, DoneTitleSettable, DoneButtonHandlerSettable {

    public var doneButtonHandler: ToolbarDoneButtonHandler<UITextView>?
    
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
    
    @objc private func doneButtonPressed(_ sender: UIBarButtonItem) {
        NotificationCenter.default.post(name: .UITextViewTextDidEndEditing, object: self)
        doneButtonHandler?(self, sender)
    }
    
}
