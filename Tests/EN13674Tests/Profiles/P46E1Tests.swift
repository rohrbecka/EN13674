//
//  P46E1Tests.swift
//  
//
//  Created by André Rohrbeck on 23.10.22.
//

import XCTest
@testable import EN13674

internal final class P46E1Tests: XCTestCase {

    let sut = P46E1.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements[0...8]),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees)
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements[10...24]),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees)
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements[26...34]),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 300, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -9.4405, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 80, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[1] as? ArcElement)?.endPoint?.x, -21.9405, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? ArcElement)?.radius, 13, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[3] as? LineElement)?.heading,
                       Angle(degrees: 270),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[4] as? ArcElement)?.radius, 1, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[5] as? LineElement)?.heading,
                       Angle(dx: 4, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 6, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? ArcElement)?.radius, 30, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? ArcElement)?.center.y, -55.55, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[8] as? LineElement)?.end, (-7, -67.5), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[8] as? LineElement)?.heading,
                       Angle(dx: 1, dy: -22.5),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[9] as? LineElement)?.start, (-7, -67.5), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[9] as? LineElement)?.end, (-7, -97.5), accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[10] as? LineElement)?.start, (-7, -97.5), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[10] as? LineElement)?.heading,
                       Angle(dx: -2, dy: -22.5),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[11] as? ArcElement)?.radius, 30, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[11] as? ArcElement)?.center.y, -109.2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[12] as? ArcElement)?.radius, 6, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[13] as? LineElement)?.heading,
                       Angle(dx: -4, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[14] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[15] as? LineElement)?.start.x, -62.5)
        XCTAssertEqual((sut[15] as? LineElement)?.end, (-62.5, -144))

        XCTAssertEqual((sut[16] as? ArcElement)?.radius, 1, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[17] as? LineElement)?.start, (-61.5, -145))
        XCTAssertEqual((sut[17] as? LineElement)?.end, (61.5, -145))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[18] as? ArcElement)?.radius, 1, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[19] as? LineElement)?.start, (62.5, -144))
        XCTAssertEqual((sut[19] as? LineElement)?.end.x, 62.5, accuracy: 0.5)

        XCTAssertEqual((sut[20] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[21] as? LineElement)?.heading,
                       Angle(dx: -4, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[22] as? ArcElement)?.radius, 6)

        XCTAssertEqual((sut[23] as? ArcElement)?.radius, 30)
        XCTAssertEqual((sut[23] as? ArcElement)?.center.y, -109.2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[24] as? LineElement)?.end, (7, -97.5), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[24] as? LineElement)?.heading,
                       Angle(dx: -2, dy: 22.5),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[25] as? LineElement)?.start, (7, -97.5), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[25] as? LineElement)?.end, (7, -67.5), accuracy: defaultAccuracy)
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[26] as? LineElement)?.start, (7, -67.5), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[26] as? LineElement)?.heading,
                       Angle(dx: 1, dy: 22.5),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 30)
        XCTAssertEqual((sut[27] as? ArcElement)?.center.y, -55.55, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[28] as? ArcElement)?.radius, 6)

        XCTAssertEqual((sut[29] as? LineElement)?.heading,
                       Angle(dx: 4, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[30] as? ArcElement)?.radius, 1)

        XCTAssertEqual((sut[31] as? LineElement)?.heading,
                       Angle(degrees: 90),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[32] as? ArcElement)?.radius, 13)

        XCTAssertEqual((sut[33] as? ArcElement)?.radius, 80)
        XCTAssertEqual((sut[33] as? ArcElement)?.startPoint.x, 21.9405, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[34] as? ArcElement)?.radius, 300)
        XCTAssertEqual((sut[34] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[34] as? ArcElement)?.startPoint.x, 9.4405, accuracy: defaultAccuracy)
    }
}
