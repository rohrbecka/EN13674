//
//  P39E1Tests.swift
//  
//
//  Created by André Rohrbeck on 28.12.22.
//

import XCTest
@testable import EN13674

internal final class P39E1Tests: XCTestCase {

    let sut = P39E1.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements), accuracyDegrees: defaultAngleAccuracyDegrees)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 305, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -21.4445, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 11.1, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? LineElement)?.heading,
                       Angle(dx: -1, dy: -20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[3] as? ArcElement)?.radius, 1.6, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[4] as? LineElement)?.heading,
                       Angle(dx: 2.75, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[5] as? ArcElement)?.radius, 8, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 22.22, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[6] as? ArcElement)?.center.y, -50.41, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? ArcElement)?.radius, 508, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? ArcElement)?.center, (-514.55, -66.68), accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[8] as? ArcElement)?.radius, 13, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[9] as? LineElement)?.heading,
                       Angle(dx: -2.75, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[10] as? ArcElement)?.radius, 16, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[11] as? LineElement)?.heading,
                       Angle(dx: -7.8, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[12] as? ArcElement)?.radius, 3.2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[13] as? LineElement)?.start.x, -58.735)
        XCTAssertEqual((sut[13] as? LineElement)?.end, (-58.735, -131.75))

        XCTAssertEqual((sut[14] as? ArcElement)?.radius, 1.6)

        XCTAssertEqual((sut[15] as? LineElement)?.start, (-57.135, -133.35))
        XCTAssertEqual((sut[15] as? LineElement)?.end, (57.135, -133.35))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[16] as? ArcElement)?.radius, 1.6)

        XCTAssertEqual((sut[17] as? LineElement)?.start, (58.735, -131.75))
        XCTAssertEqual((sut[17] as? LineElement)?.end.x, 58.735)

        XCTAssertEqual((sut[18] as? ArcElement)?.radius, 3.2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[19] as? LineElement)?.heading,
                       Angle(dx: -7.8, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[20] as? ArcElement)?.radius, 16, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[21] as? LineElement)?.heading,
                       Angle(dx: -2.75, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[22] as? ArcElement)?.radius, 13)

        XCTAssertEqual((sut[23] as? ArcElement)?.radius, 508)
        XCTAssertEqual((sut[23] as? ArcElement)?.center, (514.55, -66.68), accuracy: defaultAccuracy)
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 22.22)
        XCTAssertEqual((sut[24] as? ArcElement)?.center.y, -50.41)

        XCTAssertEqual((sut[25] as? ArcElement)?.radius, 8)

        XCTAssertEqual((sut[26] as? LineElement)?.heading,
                       Angle(dx: 2.75, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 1.6)

        XCTAssertEqual((sut[28] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[29] as? ArcElement)?.radius, 11.1)

        XCTAssertEqual((sut[30] as? ArcElement)?.radius, 305)
        XCTAssertEqual((sut[30] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[30] as? ArcElement)?.startPoint.x, 21.4445, accuracy: defaultAccuracy)
    }
}
