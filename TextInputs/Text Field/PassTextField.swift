//
//  SKPassTextField.swift
//  SKUtilsSwift
//
//  Created by Sergey Kostyan on 18.07.16.
//  Copyright © 2016 Sergey Kostyan. All rights reserved.
//

import UIKit

open class PassTextField: BaseTextField {

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isSecureTextEntry = true
        autocorrectionType = .no
        autocapitalizationType = .none
    }
    
}
