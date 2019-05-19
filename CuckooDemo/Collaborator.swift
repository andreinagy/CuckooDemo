//
//  Collaborator.swift
//  CuckooDemo
//
//  Created by Andrei Nagy on 18/05/2019.
//  Copyright © 2019 Andrei Nagy. All rights reserved.
//

// cuckoo: generate

import Foundation

enum SomeEnum {
    case first
    case second
    case third
}

typealias SomeClosure = (String?) -> Void

protocol CollaboratorProtocol {
    var intProperty: Int { get set }
    func functionWithoutArguments()
    func functionWithReturnValue() -> Int
    func functionWithParameterAndReturn(param: Int) -> Int
    func functionWithCustomTypeParamAndReturn(param: SomeEnum) -> String
    func functionWithClosure(param: Int, closure: @escaping SomeClosure)
}

struct CollaboratorStruct {
    var intProperty: Int
}

extension CollaboratorStruct: CollaboratorProtocol {
    func functionWithClosure(param: Int, closure: @escaping (String?) -> Void) {
        closure("something")
    }
    
    
    func functionWithoutArguments() {
        
    }
    
    func functionWithReturnValue() -> Int {
        return 3
    }
    
    func functionWithParameterAndReturn(param: Int) -> Int {
        return 2 * param
    }
    
    func functionWithCustomTypeParamAndReturn(param: SomeEnum) -> String {
        var result = ""
        switch param {
        case .first:
            result = "first"
        default:
            result = "other than first"
        }
        
        return result
    }
}
