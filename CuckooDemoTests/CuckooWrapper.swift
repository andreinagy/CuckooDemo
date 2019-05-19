//
//  CuckooWrapper.swift
//  CuckooDemoTests
//
//  Created by Andrei Nagy on 19/05/2019.
//  Copyright © 2019 Andrei Nagy. All rights reserved.
//

import Cuckoo
@testable import CuckooDemo

struct CuckooWrapper {
}

// MARK: - Stubs default values registry
extension CuckooWrapper {
    static func mangleDefaultValuesRegistry() {
        DefaultValueRegistry.register(value: 777, forType: Int.self)
    }
    
    static func resetDefaultValuesRegistry() {
        DefaultValueRegistry.reset()
    }
}

// MARK: - Factory methods
extension CuckooWrapper {
    
    /// Make a stub double which responds with DefaultValueRegistry values.
    static func makeCollaboratorStub() -> CollaboratorProtocol {
        return CollaboratorProtocolStub()
    }
    
    /// Mock which decorates a stub with custom results.
    static func makeCollaboratorMock() -> CollaboratorProtocol {
        let result = MockCollaboratorProtocol().withEnabledDefaultImplementation(CollaboratorProtocolStub())
        stub(result) { (stubbingProxy) in
            when(stubbingProxy.functionWithReturnValue()).thenReturn(42)
            
            when(stubbingProxy
                .functionWithClosure(param: anyInt(),
                                     closure: ParameterMatcher<SomeClosure>()))
                .then({ (int, closure) in
                closure("someClosureResult")
            })
        }
        return result;
    }
}

// MARK: - Spies
extension CuckooWrapper {
    
    /// Cuckoo asserts internally
    static func verifyFunctionWithoutArgumentsCalled(_ mock: CollaboratorProtocol, calledTimes: Int) {
        verify(mock as! MockCollaboratorProtocol, times(calledTimes)).functionWithoutArguments()
    }
}
