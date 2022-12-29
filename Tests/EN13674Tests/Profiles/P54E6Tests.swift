//
//  P54E6Tests.swift
//  
//
//  Created by André Rohrbeck on 23.10.22.
//

import XCTest
@testable import EN13674
@testable import ProfilePath

internal final class P54E6Tests: XCTestCase {

    let sut = P54E6.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(sut.elements, accuracyDegrees: defaultAngleAccuracyDegrees)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 300, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -2.955, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 80, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[1] as? ArcElement)?.endPoint?.x, -25.985, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? ArcElement)?.radius, 16, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[2] as? ArcElement)?.endPoint?.x, -33.25, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[3] as? ArcElement)?.radius, 5, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[4] as? LineElement)?.heading,
                       Angle(dx: -1, dy: -20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[5] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[6] as? LineElement)?.heading,
                       Angle(dx: 2.75, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[7] as? ArcElement)?.radius, 8, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[8] as? ArcElement)?.radius, 22, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[8] as? ArcElement)?.center.y, -59.4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[9] as? ArcElement)?.radius, 508, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[9] as? ArcElement)?.center, (-516, -84.8), accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[10] as? ArcElement)?.radius, 16, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[11] as? LineElement)?.heading,
                       Angle(dx: -2.75, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[12] as? ArcElement)?.radius, 20, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[13] as? LineElement)?.heading,
                       Angle(dx: -10, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[14] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[15] as? LineElement)?.start, (-62.5, -152), accuracy: 0.5)
        XCTAssertEqual((sut[15] as? LineElement)?.end, (-62.5, -159))

        XCTAssertEqual((sut[16] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[17] as? LineElement)?.start, (-60.5, -161))
        XCTAssertEqual((sut[17] as? LineElement)?.end, (60.5, -161))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[18] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[19] as? LineElement)?.start, (62.5, -159))
        XCTAssertEqual((sut[19] as? LineElement)?.end, (62.5, -152), accuracy: 0.5)

        XCTAssertEqual((sut[20] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[21] as? LineElement)?.heading,
                       Angle(dx: -10, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[22] as? ArcElement)?.radius, 20, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[23] as? LineElement)?.heading,
                       Angle(dx: -2.75, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 16)

        XCTAssertEqual((sut[25] as? ArcElement)?.radius, 508)
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[26] as? ArcElement)?.radius, 22)
        XCTAssertEqual((sut[26] as? ArcElement)?.center.y, -59.4)

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 8)

        XCTAssertEqual((sut[28] as? LineElement)?.heading,
                       Angle(dx: 2.75, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[29] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[30] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[31] as? ArcElement)?.radius, 5)

        XCTAssertEqual((sut[32] as? ArcElement)?.radius, 16)
        XCTAssertEqual((sut[32] as? ArcElement)?.startPoint.x, 33.25)

        XCTAssertEqual((sut[33] as? ArcElement)?.radius, 80)
        XCTAssertEqual((sut[33] as? ArcElement)?.startPoint.x, 25.985, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[34] as? ArcElement)?.radius, 300)
        XCTAssertEqual((sut[34] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[34] as? ArcElement)?.startPoint.x, 2.955, accuracy: defaultAccuracy)
    }
}
