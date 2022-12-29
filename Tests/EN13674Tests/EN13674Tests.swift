import XCTest
@testable import EN13674

final class EN13674Tests: XCTestCase {
    func testExample() throws {
        let profile = EN13674.profile(.p33E1)
        let points = profile.profile()

        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 3
        formatter.maximumFractionDigits = 3
        for point in points {
            let xString = formatter.string(from: NSNumber(value: point.x)) ?? ""
            let yString = formatter.string(from: NSNumber(value: point.y)) ?? ""
            print("\(xString)\t\(yString)")
        }
    }



    func testThatAllSpacesInProfileNamesAreFixedSpaces () {
        for profileType in RailProfileType.allCases {
            XCTAssert(!profileType.localizedDescription.contains(" "),
                      "Localized description of \(profileType) contains regular whitespace!")
        }
    }



    func testThatStandardIsCorrectlyNamed () {
        for profileType in RailProfileType.allCases {
            XCTAssert(profileType.localizedDescription.contains("EN 13674-1 – ")
                      || profileType.localizedDescription.contains("EN 13674-4 – "),
                      "Localized description of \(profileType) contains an illegal standards description!")
        }
    }
}
