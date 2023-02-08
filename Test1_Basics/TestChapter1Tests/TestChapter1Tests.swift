//
//  TestChapter1Tests.swift
//  TestChapter1Tests
//
//  Created by fl0421 on 13/01/23.
//

import XCTest
@testable import TestChapter1

final class TestChapter1Tests: XCTestCase {
    
    func test_fail() {
        XCTFail("Huston we have a problem")
    }
    
    func test_fail_withInterpolateMessage(){
        let theAnswer = "is on your ❤️"
        XCTFail("The answer is \(theAnswer)")
    }
    
    //Wrong way
    func test_avoidConditionlCode(){
        let success = false
        if !success {
            XCTFail()
        }
    }
    
    //Rigth way
    func test_assertTrue(){
        let success = false
        XCTAssertTrue(success)
    }
    
    //assetion with description
    func test_assertNil(){
        let optinalValue: Int? = 123
        XCTAssertNil(optinalValue)
    }
    
    struct SimpleStruct {
        let x : Int
        let y : Int
    }
    
    func test_assertNil_withSimpleStruct(){
        let optionalValue : SimpleStruct? = SimpleStruct(x: 1, y: 2)
        XCTAssertNil(optionalValue)
    }
    
    //Making a custom description for the object
    struct SimpleStructWithDescription: CustomStringConvertible {
        let x : Int
        let y : Int
        
        var description: String { "(\(x) \(y))"}
    }
    
    func test_assertNil_withSimpleStructWithDescription(){
        let optionalValue : SimpleStructWithDescription? = SimpleStructWithDescription(x: 1, y: 2)
        XCTAssertNil(optionalValue)
    }
    
    //Making equal with optionals
    func test_assertEqual(){
        let actual = "actual"
        XCTAssertEqual(actual, "expected")
    }
    
    func test_assetEqual_withOptionals(){
        let result : String? = "foo"
        XCTAssertEqual(result, "var")
    }
    
    //Making equal to floating-point numbers
    func test_floatingPointDanger(){
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3)
    }
    
    func test_floatingPointFixed(){
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3, accuracy: 0.0001)
    }
    
    func test_messageOverkill(){
        let actual = "actual"
        XCTAssertEqual(actual,"Expected \"expected\" but got \"(actual)\"")
    }
}
