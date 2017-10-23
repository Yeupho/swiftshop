//
//  swiftshopTests.swift
//  swiftshopTests
//
//  Created by Luke Nguyen on 10/23/17.
//  Copyright © 2017 Luke Nguyen. All rights reserved.
//

import XCTest

class swiftshopTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    func testGethours(){
        XCTAssert(Wage.gethours(forWage: 15, andPrice: 60) == 4)
        XCTAssert(Wage.gethours(forWage: 15.50, andPrice: 250.53) == 17)
        XCTAssert(Wage.gethours(forWage: 16, andPrice: 1220) == 77)
    }
    
}
