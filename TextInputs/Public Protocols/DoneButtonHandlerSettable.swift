//
//  DoneButtonHandlerSettable.swift
//  SKTextInputs
//
//  Created by Sergey Kostyan on 02.09.2018.
//

import Foundation

public protocol DoneButtonHandlerSettable {
    
    associatedtype HandlerType
    var doneButtonHandler: HandlerType? { get set }
    
}
