//
//  P50E4Tests.swift
//  
//
//  Created by André Rohrbeck on 23.10.22.
//

import XCTest
@testable import EN13674
@testable import ProfilePath

internal final class P50E4Tests: XCTestCase {

    let sut = P50E4.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(sut.elements, accuracyDegrees: defaultAngleAccuracyDegrees)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 300, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -10.0125, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 80, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[1] as? ArcElement)?.endPoint?.x, -24.8635, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? ArcElement)?.radius, 13, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[3] as? LineElement)?.heading,
                       Angle(dx: -1, dy: -20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[4] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[5] as? LineElement)?.heading,
                       Angle(dx: 2.75, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 8, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? ArcElement)?.radius, 22, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? ArcElement)?.center.y, -58.3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[8] as? ArcElement)?.radius, 508, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[8] as? ArcElement)?.center, (-515.5, -76.9), accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[9] as? ArcElement)?.radius, 15, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[10] as? LineElement)?.heading,
                       Angle(dx: -2.75, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[11] as? ArcElement)?.radius, 20, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[12] as? LineElement)?.heading,
                       Angle(dx: -8.01, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[13] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[14] as? LineElement)?.start, (-62.5, -145), accuracy: 0.5)
        XCTAssertEqual((sut[14] as? LineElement)?.end, (-62.5, -150))

        XCTAssertEqual((sut[15] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[16] as? LineElement)?.start, (-60.5, -152))
        XCTAssertEqual((sut[16] as? LineElement)?.end, (60.5, -152))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[17] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[18] as? LineElement)?.start, (62.5, -150))
        XCTAssertEqual((sut[18] as? LineElement)?.end, (62.5, -145), accuracy: 0.5)

        XCTAssertEqual((sut[19] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[20] as? LineElement)?.heading,
                       Angle(dx: -8.01, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[21] as? ArcElement)?.radius, 20, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[22] as? LineElement)?.heading,
                       Angle(dx: -2.75, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[23] as? ArcElement)?.radius, 15)

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 508)
        XCTAssertEqual((sut[24] as? ArcElement)?.center, (515.5, -76.9), accuracy: defaultAccuracy)
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[25] as? ArcElement)?.radius, 22)
        XCTAssertEqual((sut[25] as? ArcElement)?.center.y, -58.3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[26] as? ArcElement)?.radius, 8)

        XCTAssertEqual((sut[27] as? LineElement)?.heading,
                       Angle(dx: 2.75, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[28] as? ArcElement)?.radius, 3)

        XCTAssertEqual((sut[29] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[30] as? ArcElement)?.radius, 13)

        XCTAssertEqual((sut[31] as? ArcElement)?.radius, 80)
        XCTAssertEqual((sut[31] as? ArcElement)?.startPoint.x, 24.8635, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[32] as? ArcElement)?.radius, 300)
        XCTAssertEqual((sut[32] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[32] as? ArcElement)?.startPoint.x, 10.0125, accuracy: defaultAccuracy)
    }
}
