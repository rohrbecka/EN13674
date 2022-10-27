//
//  P60E1Tests.swift
//  
//
//  Created by André Rohrbeck on 23.10.22.
//

import XCTest
@testable import EN13674

internal final class P60E1Tests: XCTestCase {

    let sut = P60E1.profile



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

        XCTAssertEqual((sut[4] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[5] as? LineElement)?.heading,
                       Angle(dx: 2.75, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 7, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? ArcElement)?.radius, 35, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? ArcElement)?.center.y, -60.25)

        XCTAssertEqual((sut[8] as? ArcElement)?.radius, 120, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[9] as? LineElement)?.start, (-8.25, -79.75))
        XCTAssertEqual((sut[9] as? LineElement)?.end, (-8.25, -111.75))
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[10] as? ArcElement)?.radius, 120, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[11] as? ArcElement)?.radius, 35, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[11] as? ArcElement)?.center.y, -131.25)

        XCTAssertEqual((sut[12] as? ArcElement)?.radius, 7, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[13] as? LineElement)?.heading,
                       Angle(dx: -2.75, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[14] as? ArcElement)?.radius, 40, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[15] as? LineElement)?.heading,
                       Angle(dx: -14, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[16] as? ArcElement)?.radius, 4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[17] as? LineElement)?.start, (-75, -164.5), accuracy: 0.5)
        XCTAssertEqual((sut[17] as? LineElement)?.end, (-75, -170))

        XCTAssertEqual((sut[18] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[19] as? LineElement)?.start, (-73, -172))
        XCTAssertEqual((sut[19] as? LineElement)?.end, (73, -172))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[20] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[21] as? LineElement)?.start, (75, -170))
        XCTAssertEqual((sut[21] as? LineElement)?.end, (75, -164.5), accuracy: 0.5)

        XCTAssertEqual((sut[22] as? ArcElement)?.radius, 4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[23] as? LineElement)?.heading, Angle(dx: -14, dy: 1))

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 40, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[25] as? LineElement)?.heading,
                       Angle(dx: -2.75, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[26] as? ArcElement)?.radius, 7)

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 35)
        XCTAssertEqual((sut[27] as? ArcElement)?.center.y, -131.25)

        XCTAssertEqual((sut[28] as? ArcElement)?.radius, 120)

        XCTAssertEqual((sut[29] as? LineElement)?.start, (8.25, -111.75))
        XCTAssertEqual((sut[29] as? LineElement)?.end, (8.25, -79.75))
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[30] as? ArcElement)?.radius, 120)

        XCTAssertEqual((sut[31] as? ArcElement)?.radius, 35)
        XCTAssertEqual((sut[31] as? ArcElement)?.center.y, -60.25)

        XCTAssertEqual((sut[32] as? ArcElement)?.radius, 7)

        XCTAssertEqual((sut[33] as? LineElement)?.heading,
                       Angle(dx: 2.75, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[34] as? ArcElement)?.radius, 3)

        XCTAssertEqual((sut[35] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[36] as? ArcElement)?.radius, 13)

        XCTAssertEqual((sut[37] as? ArcElement)?.radius, 80)
        XCTAssertEqual((sut[37] as? ArcElement)?.startPoint.x, 26.0265, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[38] as? ArcElement)?.radius, 300)
        XCTAssertEqual((sut[38] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[38] as? ArcElement)?.startPoint.x, 10.228, accuracy: defaultAccuracy)
    }
}
