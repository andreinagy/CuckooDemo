//
//  Model.swift
//  CuckooDemo
//
//  Created by Andrei Nagy on 18/05/2019.
//  Copyright © 2019 Andrei Nagy. All rights reserved.
//

import Foundation

struct Unit {
    let model: CollaboratorProtocol?
    
    func hasModel() -> Bool {
        return model != nil
    }
    
    func modelIntProperty() -> Int {
        return model?.intProperty ?? 0
    }
    
    func modelFunctionWithoutArguments() {
        model?.functionWithoutArguments()
    }
    
    func modelFunctionWithReturnValue() -> Int {
        return model?.functionWithReturnValue() ?? 0
    }
    
    func modelFunctionWithParameterAndReturn(param: Int) -> Int {
        return model?.functionWithParameterAndReturn(param: param) ?? 0
    }
    
    func modelFunctionWithCustomTypeParamAndReturn(param: SomeEnum) -> String {
        return model?.functionWithCustomTypeParamAndReturn(param: param) ?? "nothing"
    }
    
    func modelFunctionWithClosure(param: Int, closure: @escaping SomeClosure) {
        model?.functionWithClosure(param: param, closure: closure)
    }
}
