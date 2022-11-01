//
//  P60E2Tests.swift
//  
//
//  Created by André Rohrbeck on 23.10.22.
//

import XCTest
@testable import EN13674

let defaultAngleAccuracyDegrees = 0.001
let defaultAccuracy = 0.00001

internal final class P60E2Tests: XCTestCase {

    let sut = P60E2.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(sut.elements, accuracyDegrees: defaultAngleAccuracyDegrees)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 200, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -11.889, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 70, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[1] as? ArcElement)?.endPoint?.x, -24.4565, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? ArcElement)?.radius, 16, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[2] as? ArcElement)?.endPoint?.x, -35.387, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[3] as? ArcElement)?.radius, 8, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[4] as? LineElement)?.heading,
                       Angle(dx: -1, dy: -20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[5] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[6] as? LineElement)?.heading,
                       Angle(dx: 2.75, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[7] as? ArcElement)?.radius, 7, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[8] as? ArcElement)?.radius, 35, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[8] as? ArcElement)?.center.y, -60.25)

        XCTAssertEqual((sut[9] as? ArcElement)?.radius, 120, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[10] as? LineElement)?.start, (-8.25, -79.75))
        XCTAssertEqual((sut[10] as? LineElement)?.end, (-8.25, -111.75))
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[11] as? ArcElement)?.radius, 120, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[12] as? ArcElement)?.radius, 35, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[12] as? ArcElement)?.center.y, -131.25)

        XCTAssertEqual((sut[13] as? ArcElement)?.radius, 7, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[14] as? LineElement)?.heading,
                       Angle(dx: -2.75, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[15] as? ArcElement)?.radius, 40, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[16] as? LineElement)?.heading,
                       Angle(dx: -14, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[17] as? ArcElement)?.radius, 4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[18] as? LineElement)?.start, (-75, -164.5), accuracy: 0.5)
        XCTAssertEqual((sut[18] as? LineElement)?.end, (-75, -170))

        XCTAssertEqual((sut[19] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[20] as? LineElement)?.start, (-73, -172))
        XCTAssertEqual((sut[20] as? LineElement)?.end, (73, -172))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[21] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[22] as? LineElement)?.start, (75, -170))
        XCTAssertEqual((sut[22] as? LineElement)?.end, (75, -164.5), accuracy: 0.5)

        XCTAssertEqual((sut[23] as? ArcElement)?.radius, 4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[24] as? LineElement)?.heading, Angle(dx: -14, dy: 1))

        XCTAssertEqual((sut[25] as? ArcElement)?.radius, 40, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[26] as? LineElement)?.heading,
                       Angle(dx: -2.75, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 7)

        XCTAssertEqual((sut[28] as? ArcElement)?.radius, 35)
        XCTAssertEqual((sut[28] as? ArcElement)?.center.y, -131.25)

        XCTAssertEqual((sut[29] as? ArcElement)?.radius, 120)

        XCTAssertEqual((sut[30] as? LineElement)?.start, (8.25, -111.75))
        XCTAssertEqual((sut[30] as? LineElement)?.end, (8.25, -79.75))
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[31] as? ArcElement)?.radius, 120)

        XCTAssertEqual((sut[32] as? ArcElement)?.radius, 35)
        XCTAssertEqual((sut[32] as? ArcElement)?.center.y, -60.25)

        XCTAssertEqual((sut[33] as? ArcElement)?.radius, 7)

        XCTAssertEqual((sut[34] as? LineElement)?.heading,
                       Angle(dx: 2.75, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[35] as? ArcElement)?.radius, 3)

        XCTAssertEqual((sut[36] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[37] as? ArcElement)?.radius, 8)

        XCTAssertEqual((sut[38] as? ArcElement)?.radius, 16)
        XCTAssertEqual((sut[38] as? ArcElement)?.startPoint.x, 35.387, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[39] as? ArcElement)?.radius, 70)
        XCTAssertEqual((sut[39] as? ArcElement)?.startPoint.x, 24.4565, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[40] as? ArcElement)?.radius, 200)
        XCTAssertEqual((sut[40] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[40] as? ArcElement)?.startPoint.x, 11.889, accuracy: defaultAccuracy)
    }
}
