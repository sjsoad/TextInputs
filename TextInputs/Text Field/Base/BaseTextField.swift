//
//  SKBaseTextField.swift
//  SKUtilsSwift
//
//  Created by Mac on 20.07.16.
//  Copyright © 2016 Sergey Kostyan. All rights reserved.
//

import UIKit

open class BaseTextField: UITextField {
    
    // MARK: - IBInspectable -
    
    @IBInspectable public private(set) var placeholderColor: UIColor? {
        didSet { updateAttributtedPlaceholder() }
    }
    
    // MARK: - Public Override -
    
    override open var placeholder: String? {
        didSet { updateAttributtedPlaceholder() }
    }
    
    // MARK: - Lifecyrcle -
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        updateAttributtedPlaceholder()
    }
    
    // MARK: - Private -
    
    private func updateAttributtedPlaceholder() {
        guard let text = placeholder, let color = placeholderColor else { return }
        attributedPlaceholder = NSAttributedString(string: text, attributes: [.foregroundColor: color])
    }
    
}
