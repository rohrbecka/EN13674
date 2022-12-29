//
//  P56E1Tests.swift
//  
//
//  Created by André Rohrbeck on 23.10.22.
//

import XCTest
@testable import EN13674
@testable import ProfilePath

internal final class P56E1Tests: XCTestCase {

    let sut = P56E1.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(sut.elements, accuracyDegrees: defaultAngleAccuracyDegrees)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 305, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -5.8935, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 80, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[1] as? ArcElement)?.endPoint?.x, -25.6175, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? ArcElement)?.radius, 12.7, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[3] as? LineElement)?.heading,
                       Angle(dx: -1, dy: -20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[4] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[5] as? LineElement)?.heading,
                       Angle(dx: 2.75, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 8, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? LineElement)?.start.x, -10.0)
        XCTAssertEqual((sut[7] as? LineElement)?.end.x, -10.0)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[8] as? ArcElement)?.radius, 15, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[9] as? LineElement)?.heading,
                       Angle(dx: -2.75, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[10] as? ArcElement)?.radius, 20, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[11] as? LineElement)?.heading,
                       Angle(dx: -10, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[12] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[13] as? LineElement)?.start, (-70, -150.55), accuracy: 0.5)
        XCTAssertEqual((sut[13] as? LineElement)?.end, (-70, -157.25))

        XCTAssertEqual((sut[14] as? ArcElement)?.radius, 1.5, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[15] as? LineElement)?.start, (-68.5, -158.75))
        XCTAssertEqual((sut[15] as? LineElement)?.end, (68.5, -158.75))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[16] as? ArcElement)?.radius, 1.5, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[17] as? LineElement)?.start, (70, -157.25))
        XCTAssertEqual((sut[17] as? LineElement)?.end, (70, -150.55), accuracy: 0.5)

        XCTAssertEqual((sut[18] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[19] as? LineElement)?.heading,
                       Angle(dx: -10, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[20] as? ArcElement)?.radius, 20, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[21] as? LineElement)?.heading,
                       Angle(dx: -2.75, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[22] as? ArcElement)?.radius, 15)

        XCTAssertEqual((sut[23] as? LineElement)?.start.x, 10)
        XCTAssertEqual((sut[23] as? LineElement)?.end.x, 10)
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 8)

        XCTAssertEqual((sut[25] as? LineElement)?.heading,
                       Angle(dx: 2.75, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[26] as? ArcElement)?.radius, 3)

        XCTAssertEqual((sut[27] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[28] as? ArcElement)?.radius, 12.7)

        XCTAssertEqual((sut[29] as? ArcElement)?.radius, 80)
        XCTAssertEqual((sut[29] as? ArcElement)?.startPoint.x, 25.6175, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[30] as? ArcElement)?.radius, 305)
        XCTAssertEqual((sut[30] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[30] as? ArcElement)?.startPoint.x, 5.8935, accuracy: defaultAccuracy)
    }
}
