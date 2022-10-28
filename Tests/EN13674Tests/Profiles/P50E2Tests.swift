//
//  P50E2Tests.swift
//  
//
//  Created by André Rohrbeck on 23.10.22.
//

import XCTest
@testable import EN13674

internal final class P50E2Tests: XCTestCase {

    let sut = P50E2.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(sut.elements, accuracyDegrees: defaultAngleAccuracyDegrees)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 300, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -10.228, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 80, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[1] as? ArcElement)?.endPoint?.x, -26.0265, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? ArcElement)?.radius, 13, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[3] as? LineElement)?.heading,
                       Angle(dx: -1, dy: -20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[4] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[5] as? LineElement)?.heading,
                       Angle(dx: 3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 8, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? ArcElement)?.radius, 30.81, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? ArcElement)?.center.y, -54, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[8] as? LineElement)?.start.x, -7.5, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[8] as? LineElement)?.end.x, -7.5, accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[9] as? ArcElement)?.radius, 30.81, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[9] as? ArcElement)?.center.y, -113, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[10] as? ArcElement)?.radius, 8, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[11] as? LineElement)?.heading,
                       Angle(dx: -3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[12] as? ArcElement)?.radius, 10, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[13] as? LineElement)?.heading,
                       Angle(dx: -8, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[14] as? ArcElement)?.radius, 5, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[15] as? LineElement)?.start, (-70, -144.87), accuracy: 0.6)
        XCTAssertEqual((sut[15] as? LineElement)?.end, (-70, -149))

        XCTAssertEqual((sut[16] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[17] as? LineElement)?.start, (-68, -151))
        XCTAssertEqual((sut[17] as? LineElement)?.end, (68, -151))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[18] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[19] as? LineElement)?.start, (70, -149))
        XCTAssertEqual((sut[19] as? LineElement)?.end, (70, -144.87), accuracy: 0.6)

        XCTAssertEqual((sut[20] as? ArcElement)?.radius, 5, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[21] as? LineElement)?.heading,
                       Angle(dx: -8, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[22] as? ArcElement)?.radius, 10, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[23] as? LineElement)?.heading,
                       Angle(dx: -3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 8)

        XCTAssertEqual((sut[25] as? ArcElement)?.radius, 30.81)
        XCTAssertEqual((sut[25] as? ArcElement)?.center.y, -113, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[26] as? LineElement)?.start.x, 7.5, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[26] as? LineElement)?.end.x, 7.5, accuracy: defaultAccuracy)
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 30.81)
        XCTAssertEqual((sut[27] as? ArcElement)?.center.y, -54)

        XCTAssertEqual((sut[28] as? ArcElement)?.radius, 8)

        XCTAssertEqual((sut[29] as? LineElement)?.heading,
                       Angle(dx: 3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[30] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[31] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[32] as? ArcElement)?.radius, 13)

        XCTAssertEqual((sut[33] as? ArcElement)?.radius, 80)
        XCTAssertEqual((sut[33] as? ArcElement)?.startPoint.x, 26.0265, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[34] as? ArcElement)?.radius, 300)
        XCTAssertEqual((sut[34] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[34] as? ArcElement)?.startPoint.x, 10.228, accuracy: defaultAccuracy)
    }
}
