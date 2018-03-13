//
//  UnitTestTrainingTests.swift
//  UnitTestTrainingTests
//
//  Created by Waleed on 13/03/2018.
//  Copyright © 2018 Waleed. All rights reserved.
//

import XCTest
@testable import UnitTestTraining

class UnitTestTrainingTests: XCTestCase {
    
    
    let viewModel = LoginViewModel()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testWhenUsernameEmptyShouldReturnFalseMessage(){
        let result = viewModel.login(username: "", password: "abcgsdfgsd")
        XCTAssertEqual("Username should not empty", result)
    }

    func testWhenPasswordLessThenSixShouldReturnFalseMessage(){
        
        let username = "aaa"
        
        let result = viewModel.login(username: username, password: "abce")
        
        XCTAssertEqual("Password should be greater than six", result)
    }
    
    
    func testImageCountFormat(){
        let result = viewModel.formateMessage(count: 25)
        XCTAssertEqual("25 Images", result)
        
    }
    
    
    

    
    
}
