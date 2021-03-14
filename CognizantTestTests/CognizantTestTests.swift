//
//  CognizantTestTests.swift
//  CognizantTestTests
//
//  Created by Athlosn90 on 13/03/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import XCTest
@testable import CognizantTest

class CognizantTestTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testDataViewModel() {
         let data = Planets(Name: "Earth", Size: "40,075km", Satellites: "Moon", Image: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/The_Earth_seen_from_Apollo_17.jpg/220px-The_Earth_seen_from_Apollo_17.jpg", Category : "Planet", Year: "365 Days")
         let dataViewModel = DataViewModel(data: data)
         
         // what is it that we want to test?
        XCTAssertEqual(data.Name, dataViewModel.name)
        XCTAssertEqual(data.Size, dataViewModel.size)
     }
    
    func testUserViewModel() {
         let user = User(username: "Username", password: "Password")
         let userViewModel = UserViewModel(user: user)
         
         // what is it that we want to test?
        XCTAssertEqual(user.username, userViewModel.username)
        XCTAssertEqual(user.password, userViewModel.password)
    }

}
