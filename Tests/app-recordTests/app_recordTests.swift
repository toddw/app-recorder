import XCTest
@testable import app_record

class app_recordTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(app_record().text, "Hello, World!")
    }


    static var allTests : [(String, (app_recordTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
