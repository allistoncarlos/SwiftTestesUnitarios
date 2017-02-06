//
//  TestesUnitariosTests.swift
//  TestesUnitariosTests
//
//  Created by Alliston Aleixo on 01/02/17.
//  Copyright © 2017 Alliston Aleixo. All rights reserved.
//

import XCTest
@testable import TestesUnitarios

class TestesUnitariosTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSum() {
        let result = ViewController.sum(1, 2);
        XCTAssert(result == 4, "Valor errado da soma");
    }
    
    func testPerformanceExample() {
        self.measure {
            _ = ViewController.sum(1, 2);
        }
    }
    
    func testSumAsync() {
        let asyncExpectation = self.expectation(description: "sum");
        
        ViewController.sumAsync(1, 2, completionHandler: { result in
            asyncExpectation.fulfill();
            
            XCTAssert(result == 3);
        });
        
        self.waitForExpectations(timeout: 5) { error in
            XCTAssertNil(error, "Algo deu errado depois de 5 segundos");
        }
    }
    
}
