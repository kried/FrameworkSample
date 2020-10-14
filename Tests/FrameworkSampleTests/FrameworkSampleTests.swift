import XCTest
@testable import FrameworkSample

final class FrameworkSampleTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(FrameworkSample().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
