//
//  NYTimesTopTests.swift
//  NYTimesTopTests
//
//  Created by Jeril V Raj on 13/06/22.
//

import XCTest
@testable import NYTimesTop

class NYTimesTopTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testMostPopularNews() {
        let exp = self.expectation(description: "Response Received")

        self.measure {
            let period = "7"
            NewsApiManager(NewsRequest(period: period)).getNewsAPI(callBack: { status, model, err in
                print("okokok")
                if status {
                    exp.fulfill()
                }
            })
        }
        self.waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error)
        }
    }
}
