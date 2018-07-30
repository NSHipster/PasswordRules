import XCTest
@testable import PasswordRules

final class PasswordRulesTests: XCTestCase {
    func testPasswordRules() {
        let rules: [PasswordRule] = [ .required(.upper),
                                      .required(.lower),
                                      .required(.special),
                                      .allowed(.asciiPrintable),
                                      .minLength(20) ]
        
        XCTAssertEqual(PasswordRule.descriptor(for: rules), "required: upper; required: lower; required: special; allowed: ascii-printable; minlength: 20;")
    }

    static var allTests = [
        ("testPasswordRules", testPasswordRules),
    ]
}
