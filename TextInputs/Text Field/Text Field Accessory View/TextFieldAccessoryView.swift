//
//  SKTextFieldAccessoryView.swift
//  SKUtilsSwift
//
//  Created by Sergey Kostyan on 17.07.16.
//  Copyright © 2016 Sergey Kostyan. All rights reserved.
//

import UIKit

public enum AccessoryViewState: Int {
    case error
    case success
    case defaults
    case active
    
    static func stateForBool(_ valid: Bool) -> AccessoryViewState {
        if valid {
            return .success
        } else {
            return .error
        }
    }
}

public typealias DrawingHandler = (_ view: TextFieldAccessoryView) -> Void

open class TextFieldAccessoryView: UIView {
    
    @IBInspectable open var errorStateColor: UIColor = UIColor.red
    @IBInspectable open var successStateColor: UIColor = UIColor.green
    @IBInspectable open var defaultStateColor: UIColor = UIColor.lightGray
    @IBInspectable open var activeStateColor: UIColor = UIColor.darkGray
    
    open var drawing: DrawingHandler?
    
    open var currentViewState: AccessoryViewState = .defaults {
        didSet {
            setNeedsDisplay()
        }
    }
    
    open func currentStateColor() -> UIColor {
        switch currentViewState {
        case .error   : return errorStateColor
        case .success : return successStateColor
        case .defaults : return defaultStateColor
        case .active  : return activeStateColor
        }
    }

    open override func draw(_ rect: CGRect) {
        super.draw(rect)
        if let drawingHandler = drawing {
            drawingHandler(self)
        } else {
            layer.borderColor = currentStateColor().cgColor
        }
    }
}
