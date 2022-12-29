//
//  P45E2Tests.swift
//  
//
//  Created by André Rohrbeck on 28.12.22.
//

import XCTest
@testable import EN13674

internal final class P45E2Tests: XCTestCase {

    let sut = P45E2.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements), accuracyDegrees: defaultAngleAccuracyDegrees)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 300, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -10.03, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 80, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[1] as? ArcElement)?.endPoint?.x, -24.443, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? ArcElement)?.radius, 13, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[3] as? LineElement)?.heading,
                       Angle(dx: -1, dy: -20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[4] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[5] as? LineElement)?.heading,
                       Angle(dx: 4, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 7, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? ArcElement)?.radius, 400, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? ArcElement)?.center, (-406.88, -65.17), accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[8] as? ArcElement)?.radius, 6, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[9] as? LineElement)?.heading,
                       Angle(dx: -4, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[10] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[11] as? LineElement)?.start.x, -63)
        XCTAssertEqual((sut[11] as? LineElement)?.end, (-63, -139.5))

        XCTAssertEqual((sut[12] as? ArcElement)?.radius, 1.5)

        XCTAssertEqual((sut[13] as? LineElement)?.start, (-61.5, -141))
        XCTAssertEqual((sut[13] as? LineElement)?.end, (61.5, -141))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[14] as? ArcElement)?.radius, 1.5)

        XCTAssertEqual((sut[15] as? LineElement)?.start, (63, -139.5))
        XCTAssertEqual((sut[15] as? LineElement)?.end.x, 63)

        XCTAssertEqual((sut[16] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[17] as? LineElement)?.heading,
                       Angle(dx: -4, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[18] as? ArcElement)?.radius, 6)

        XCTAssertEqual((sut[19] as? ArcElement)?.radius, 400)
        XCTAssertEqual((sut[19] as? ArcElement)?.center, (406.88, -65.17), accuracy: defaultAccuracy)
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[20] as? ArcElement)?.radius, 7)

        XCTAssertEqual((sut[21] as? LineElement)?.heading,
                       Angle(dx: 4, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[22] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[23] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 13)

        XCTAssertEqual((sut[25] as? ArcElement)?.radius, 80)
        XCTAssertEqual((sut[25] as? ArcElement)?.startPoint.x, 24.443, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[26] as? ArcElement)?.radius, 300)
        XCTAssertEqual((sut[26] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[26] as? ArcElement)?.startPoint.x, 10.03, accuracy: defaultAccuracy)
    }
}
