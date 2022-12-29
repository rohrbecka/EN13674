//
//  P50E5Tests.swift
//  
//
//  Created by André Rohrbeck on 23.10.22.
//

import XCTest
@testable import EN13674
@testable import ProfilePath

internal final class P50E5Tests: XCTestCase {

    let sut = P50E5.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(sut.elements, accuracyDegrees: defaultAngleAccuracyDegrees)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 400, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -20.2355, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 14, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? LineElement)?.heading,
                       Angle(dx: -1, dy: -16),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[3] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[4] as? LineElement)?.heading,
                       Angle(dx: 3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[5] as? ArcElement)?.radius, 7, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 80, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[6] as? ArcElement)?.center, (-87, -66), accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? LineElement)?.start, (-7, -66))
        XCTAssertEqual((sut[7] as? LineElement)?.end, (-7, -96))
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[8] as? ArcElement)?.radius, 120, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[8] as? ArcElement)?.center, (-127, -96), accuracy: defaultAccuracy)

        XCTAssertEqual((sut[9] as? ArcElement)?.radius, 7, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[10] as? LineElement)?.heading,
                       Angle(dx: -3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[11] as? ArcElement)?.radius, 40, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[12] as? LineElement)?.heading,
                       Angle(dx: -8, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[13] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[14] as? LineElement)?.start, (-67.5, -141), accuracy: 0.5)
        XCTAssertEqual((sut[14] as? LineElement)?.end, (-67.5, -146))

        XCTAssertEqual((sut[15] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[16] as? LineElement)?.start, (-65.5, -148))
        XCTAssertEqual((sut[16] as? LineElement)?.end, (65.5, -148))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[17] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[18] as? LineElement)?.start, (67.5, -146))
        XCTAssertEqual((sut[18] as? LineElement)?.end, (67.5, -141), accuracy: 0.5)

        XCTAssertEqual((sut[19] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[20] as? LineElement)?.heading,
                       Angle(dx: -8, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[21] as? ArcElement)?.radius, 40, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[22] as? LineElement)?.heading,
                       Angle(dx: -3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[23] as? ArcElement)?.radius, 7)

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 120)
        XCTAssertEqual((sut[24] as? ArcElement)?.center, (127, -96), accuracy: defaultAccuracy)

        XCTAssertEqual((sut[25] as? LineElement)?.start, (7, -96))
        XCTAssertEqual((sut[25] as? LineElement)?.end, (7, -66))
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[26] as? ArcElement)?.radius, 80)
        XCTAssertEqual((sut[26] as? ArcElement)?.center, (87, -66))

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 7)

        XCTAssertEqual((sut[28] as? LineElement)?.heading,
                       Angle(dx: 3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[29] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[30] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 16),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[31] as? ArcElement)?.radius, 14)

        XCTAssertEqual((sut[32] as? ArcElement)?.radius, 400)
        XCTAssertEqual((sut[32] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[32] as? ArcElement)?.startPoint.x, 20.2355, accuracy: defaultAccuracy)
    }
}
