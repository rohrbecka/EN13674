//
//  P49E1Tests.swift
//  
//
//  Created by André Rohrbeck on 23.10.22.
//

import XCTest
@testable import EN13674
@testable import ProfilePath

internal final class P49E1Tests: XCTestCase {

    let sut = P49E1.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(sut.elements, accuracyDegrees: defaultAngleAccuracyDegrees,
                                                  accuracy: defaultAccuracy)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 300, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -7.6335, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 80, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[1] as? ArcElement)?.endPoint?.x, -23.4175, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? ArcElement)?.radius, 13, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[3] as? LineElement)?.heading,
                       Angle(dx: -1, dy: -17.2),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[4] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[5] as? LineElement)?.heading,
                       Angle(dx: 3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 7, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? ArcElement)?.radius, 80, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? ArcElement)?.center.y, -67, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[8] as? LineElement)?.start, (-7, -67), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[8] as? LineElement)?.end, (-7, -97), accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[9] as? ArcElement)?.radius, 120, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[9] as? ArcElement)?.center.y, -97, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[10] as? ArcElement)?.radius, 7, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[11] as? LineElement)?.heading,
                       Angle(dx: -3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[12] as? ArcElement)?.radius, 40, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[13] as? LineElement)?.heading,
                       Angle(dx: -7.81, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[14] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[15] as? LineElement)?.start, (-62.5, -141.5), accuracy: 0.5)
        XCTAssertEqual((sut[15] as? LineElement)?.end, (-62.5, -147.5))

        XCTAssertEqual((sut[16] as? ArcElement)?.radius, 1.5, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[17] as? LineElement)?.start, (-61, -149))
        XCTAssertEqual((sut[17] as? LineElement)?.end, (61, -149))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[18] as? ArcElement)?.radius, 1.5, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[19] as? LineElement)?.start, (62.5, -147.5))
        XCTAssertEqual((sut[19] as? LineElement)?.end, (62.5, -141.5), accuracy: 0.5)

        XCTAssertEqual((sut[20] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[21] as? LineElement)?.heading,
                       Angle(dx: -7.81, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[22] as? ArcElement)?.radius, 40, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[23] as? LineElement)?.heading,
                       Angle(dx: -3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 7)

        XCTAssertEqual((sut[25] as? ArcElement)?.radius, 120)
        XCTAssertEqual((sut[25] as? ArcElement)?.center.y, -97)

        XCTAssertEqual((sut[26] as? LineElement)?.start, (7, -97), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[26] as? LineElement)?.end, (7, -67), accuracy: defaultAccuracy)
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 80)
        XCTAssertEqual((sut[27] as? ArcElement)?.center.y, -67)

        XCTAssertEqual((sut[28] as? ArcElement)?.radius, 7)

        XCTAssertEqual((sut[29] as? LineElement)?.heading,
                       Angle(dx: 3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[30] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[31] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 17.2),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[32] as? ArcElement)?.radius, 13)

        XCTAssertEqual((sut[33] as? ArcElement)?.radius, 80)
        XCTAssertEqual((sut[33] as? ArcElement)?.startPoint.x, 23.4175, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[34] as? ArcElement)?.radius, 300)
        XCTAssertEqual((sut[34] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[34] as? ArcElement)?.startPoint.x, 7.6335, accuracy: defaultAccuracy)
    }
}
