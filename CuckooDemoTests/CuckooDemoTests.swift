//
//  CuckooDemoTests.swift
//  CuckooDemoTests
//
//  Created by Andrei Nagy on 17/05/2019.
//  Copyright © 2019 Andrei Nagy. All rights reserved.
//

import XCTest
@testable import CuckooDemo

class CuckooDemoTests: XCTestCase {

    func testUnitWithStub() {
        // Given
        let stub = CuckooWrapper.makeCollaboratorStub()
        
        // When
        let unit = Unit(model: stub)
        
        // Then
        XCTAssertTrue(unit.hasModel())
        XCTAssertEqual(unit.modelIntProperty(), 0)
        XCTAssertEqual(unit.modelFunctionWithReturnValue(), 0)
        XCTAssertEqual(unit.modelFunctionWithParameterAndReturn(param: 9), 0)
        XCTAssertEqual(unit.modelFunctionWithCustomTypeParamAndReturn(param: .first), "")
        
        /*
        The protocol stub doesn't execute the closure.
        unit.modelFunctionWithClosure(param: 13) { (string) in
        }
        */
    }
    
    func testUnitWithClosure() {
        // Given
        let mock = CuckooWrapper.makeCollaboratorMock()
        
        // When
        let unit = Unit(model: mock)
        
        var closureValue: String?
        let closureExpectation = expectation(description: "whatever")
        unit.modelFunctionWithClosure(param: 13) { (string) in
            closureValue = string
            closureExpectation.fulfill()
        }
        waitForExpectations(timeout: 1, handler: nil)
        
        // Then
        XCTAssertEqual(unit.modelFunctionWithReturnValue(), 42)
        XCTAssertEqual(closureValue, "someClosureResult")
    }
    
    func testUnitWithSpy() {
        // Given
        let mock = CuckooWrapper.makeCollaboratorMock()
        
        // When
        let unit = Unit(model: mock)
        unit.modelFunctionWithoutArguments()
        
        // Then
        CuckooWrapper.verifyFunctionWithoutArgumentsCalled(mock, calledTimes: 1)
    }
}
