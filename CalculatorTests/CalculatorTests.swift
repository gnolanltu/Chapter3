//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Admin on 4/20/16.
//  Copyright © 2016 riis. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {

    let resCalc = CalculatorModel()


    func testAdd() {
        XCTAssertEqual(resCalc.add(1, 1), 2)
        XCTAssertEqual(resCalc.add(1, 2), 3)
        XCTAssertEqual(resCalc.add(5, 4), 9)
    }

    func testDivideByZero() {
        XCTAssertEqual(resCalc.div(0, 0), 0)

    }

}
