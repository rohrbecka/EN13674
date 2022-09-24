import XCTest
@testable import EN13674

final class EN13674Tests: XCTestCase {
    func testExample() throws {
        let profile = EN13674.profile(.p46E1)
        let points = profile.profile()

        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 3
        formatter.maximumFractionDigits = 3
        for point in points {
            print("\(formatter.string(from: NSNumber(value: point.x)) ?? "")\t\(formatter.string(from: NSNumber(value: point.y)) ?? "")")
        }

    }
}
