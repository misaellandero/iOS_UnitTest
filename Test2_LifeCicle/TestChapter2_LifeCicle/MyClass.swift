//
//  MyClass.swift
//  TestChapter2_LifeCicle
//
//  Created by fl0421 on 19/01/23.
//

import Foundation

class MyClass {
    // only one instance of the variable exists
    private static var allInstances = 0
    private let instance: Int
    
    init() {
        MyClass.allInstances += 1
        instance = MyClass.allInstances
        print(">> MyClass.init() #\(instance)")
    }
    
    deinit {
        print(">> MyClass.deinit #\(instance)")
    }
    
    func methodOne(){
        print("Method one")
    }
    
    func methodTwo(){
        print("Method two")
    }
}
