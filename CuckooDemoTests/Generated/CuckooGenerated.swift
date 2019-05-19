// swiftlint:disable all
// swiftformat:disable all
// MARK: - Mocks generated from file: CuckooDemo/Collaborator.swift
//
//  Collaborator.swift
//  CuckooDemo
//
//  Created by Andrei Nagy on 18/05/2019.
//  Copyright © 2019 Andrei Nagy. All rights reserved.
//



import Cuckoo
@testable import CuckooDemo

import Foundation


 class MockCollaboratorProtocol: CollaboratorProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = CollaboratorProtocol
    
     typealias Stubbing = __StubbingProxy_CollaboratorProtocol
     typealias Verification = __VerificationProxy_CollaboratorProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CollaboratorProtocol?

     func enableDefaultImplementation(_ stub: CollaboratorProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var intProperty: Int {
        get {
            return cuckoo_manager.getter("intProperty",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.intProperty)
        }
        
        set {
            cuckoo_manager.setter("intProperty",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.intProperty = newValue)
        }
        
    }
    

    

    
    
    
     func functionWithoutArguments()  {
        
    return cuckoo_manager.call("functionWithoutArguments()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.functionWithoutArguments())
        
    }
    
    
    
     func functionWithReturnValue() -> Int {
        
    return cuckoo_manager.call("functionWithReturnValue() -> Int",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.functionWithReturnValue())
        
    }
    
    
    
     func functionWithParameterAndReturn(param: Int) -> Int {
        
    return cuckoo_manager.call("functionWithParameterAndReturn(param: Int) -> Int",
            parameters: (param),
            escapingParameters: (param),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.functionWithParameterAndReturn(param: param))
        
    }
    
    
    
     func functionWithCustomTypeParamAndReturn(param: SomeEnum) -> String {
        
    return cuckoo_manager.call("functionWithCustomTypeParamAndReturn(param: SomeEnum) -> String",
            parameters: (param),
            escapingParameters: (param),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.functionWithCustomTypeParamAndReturn(param: param))
        
    }
    
    
    
     func functionWithClosure(param: Int, closure: @escaping SomeClosure)  {
        
    return cuckoo_manager.call("functionWithClosure(param: Int, closure: @escaping SomeClosure)",
            parameters: (param, closure),
            escapingParameters: (param, closure),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.functionWithClosure(param: param, closure: closure))
        
    }
    

	 struct __StubbingProxy_CollaboratorProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var intProperty: Cuckoo.ProtocolToBeStubbedProperty<MockCollaboratorProtocol, Int> {
	        return .init(manager: cuckoo_manager, name: "intProperty")
	    }
	    
	    
	    func functionWithoutArguments() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCollaboratorProtocol.self, method: "functionWithoutArguments()", parameterMatchers: matchers))
	    }
	    
	    func functionWithReturnValue() -> Cuckoo.ProtocolStubFunction<(), Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCollaboratorProtocol.self, method: "functionWithReturnValue() -> Int", parameterMatchers: matchers))
	    }
	    
	    func functionWithParameterAndReturn<M1: Cuckoo.Matchable>(param: M1) -> Cuckoo.ProtocolStubFunction<(Int), Int> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: param) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCollaboratorProtocol.self, method: "functionWithParameterAndReturn(param: Int) -> Int", parameterMatchers: matchers))
	    }
	    
	    func functionWithCustomTypeParamAndReturn<M1: Cuckoo.Matchable>(param: M1) -> Cuckoo.ProtocolStubFunction<(SomeEnum), String> where M1.MatchedType == SomeEnum {
	        let matchers: [Cuckoo.ParameterMatcher<(SomeEnum)>] = [wrap(matchable: param) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCollaboratorProtocol.self, method: "functionWithCustomTypeParamAndReturn(param: SomeEnum) -> String", parameterMatchers: matchers))
	    }
	    
	    func functionWithClosure<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(param: M1, closure: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Int, SomeClosure)> where M1.MatchedType == Int, M2.MatchedType == SomeClosure {
	        let matchers: [Cuckoo.ParameterMatcher<(Int, SomeClosure)>] = [wrap(matchable: param) { $0.0 }, wrap(matchable: closure) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCollaboratorProtocol.self, method: "functionWithClosure(param: Int, closure: @escaping SomeClosure)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CollaboratorProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var intProperty: Cuckoo.VerifyProperty<Int> {
	        return .init(manager: cuckoo_manager, name: "intProperty", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func functionWithoutArguments() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("functionWithoutArguments()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func functionWithReturnValue() -> Cuckoo.__DoNotUse<(), Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("functionWithReturnValue() -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func functionWithParameterAndReturn<M1: Cuckoo.Matchable>(param: M1) -> Cuckoo.__DoNotUse<(Int), Int> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: param) { $0 }]
	        return cuckoo_manager.verify("functionWithParameterAndReturn(param: Int) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func functionWithCustomTypeParamAndReturn<M1: Cuckoo.Matchable>(param: M1) -> Cuckoo.__DoNotUse<(SomeEnum), String> where M1.MatchedType == SomeEnum {
	        let matchers: [Cuckoo.ParameterMatcher<(SomeEnum)>] = [wrap(matchable: param) { $0 }]
	        return cuckoo_manager.verify("functionWithCustomTypeParamAndReturn(param: SomeEnum) -> String", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func functionWithClosure<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(param: M1, closure: M2) -> Cuckoo.__DoNotUse<(Int, SomeClosure), Void> where M1.MatchedType == Int, M2.MatchedType == SomeClosure {
	        let matchers: [Cuckoo.ParameterMatcher<(Int, SomeClosure)>] = [wrap(matchable: param) { $0.0 }, wrap(matchable: closure) { $0.1 }]
	        return cuckoo_manager.verify("functionWithClosure(param: Int, closure: @escaping SomeClosure)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CollaboratorProtocolStub: CollaboratorProtocol {
    
    
     var intProperty: Int {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int).self)
        }
        
        set { }
        
    }
    

    

    
     func functionWithoutArguments()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func functionWithReturnValue() -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
     func functionWithParameterAndReturn(param: Int) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
     func functionWithCustomTypeParamAndReturn(param: SomeEnum) -> String  {
        return DefaultValueRegistry.defaultValue(for: (String).self)
    }
    
     func functionWithClosure(param: Int, closure: @escaping SomeClosure)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: CuckooDemo/PlaceHolderClass.swift
//
//  PlaceHolderClass.swift
//  CuckooDemo
//
//  Created by Andrei Nagy on 19/05/2019.
//  Copyright © 2019 Andrei Nagy. All rights reserved.
//


import Cuckoo
@testable import CuckooDemo

import Foundation


 class MockPlaceHolderClass: PlaceHolderClass, Cuckoo.ClassMock {
    
     typealias MocksType = PlaceHolderClass
    
     typealias Stubbing = __StubbingProxy_PlaceHolderClass
     typealias Verification = __VerificationProxy_PlaceHolderClass

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: PlaceHolderClass?

     func enableDefaultImplementation(_ stub: PlaceHolderClass) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func method() -> Int {
        
    return cuckoo_manager.call("method() -> Int",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.method()
                ,
            defaultCall: __defaultImplStub!.method())
        
    }
    
    
    
     override func anotherMethod() -> String {
        
    return cuckoo_manager.call("anotherMethod() -> String",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.anotherMethod()
                ,
            defaultCall: __defaultImplStub!.anotherMethod())
        
    }
    

	 struct __StubbingProxy_PlaceHolderClass: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func method() -> Cuckoo.ClassStubFunction<(), Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPlaceHolderClass.self, method: "method() -> Int", parameterMatchers: matchers))
	    }
	    
	    func anotherMethod() -> Cuckoo.ClassStubFunction<(), String> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPlaceHolderClass.self, method: "anotherMethod() -> String", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PlaceHolderClass: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func method() -> Cuckoo.__DoNotUse<(), Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("method() -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func anotherMethod() -> Cuckoo.__DoNotUse<(), String> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("anotherMethod() -> String", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PlaceHolderClassStub: PlaceHolderClass {
    

    

    
     override func method() -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
     override func anotherMethod() -> String  {
        return DefaultValueRegistry.defaultValue(for: (String).self)
    }
    
}
// swiftformat:enable all
// swiftlint:enable all
