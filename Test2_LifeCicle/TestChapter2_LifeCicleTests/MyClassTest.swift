//
//  MyClassTest.swift
//  TestChapter2_LifeCicleTests
//
//  Created by fl0421 on 19/01/23.
//

import XCTest

@testable import TestChapter2_LifeCicle

//final class MyClassTest: XCTestCase {
//    
//    //Original
//    func test_methodOne(){
//        let sut = MyClass()
//        sut.methodOne()
//    }
//
//    func test_methodTwo(){
//        let sut = MyClass()
//        sut.methodTwo()
//    }
//}

final class MyClassTest: XCTestCase {
    //Wrong way to approach duplication

    private let sut = MyClass()

    func test_methodOne(){
        sut.methodOne()
    }

    func test_methodTwo(){
        sut.methodTwo()
    }
}
