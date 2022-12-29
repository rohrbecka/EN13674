//
//  P43E1Tests.swift
//  
//
//  Created by André Rohrbeck on 28.12.22.
//

import XCTest
@testable import EN13674
@testable import ProfilePath

internal final class P43E1Tests: XCTestCase {

    let sut = P43E1.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements[0...9]),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees)
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements[10...18]),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees)
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements[19...28]),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 300, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -9.629, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 80, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[1] as? ArcElement)?.endPoint?.x, -24.8985, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? ArcElement)?.radius, 13, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[3] as? LineElement)?.heading,
                       Angle(degrees: 270),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[4] as? ArcElement)?.radius, 4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[5] as? LineElement)?.heading,
                       Angle(dx: 3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 7, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? LineElement)?.start.x, -7.1, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? LineElement)?.end.x, -7.1, accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[8] as? ArcElement)?.radius, 7, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[9] as? LineElement)?.heading,
                       Angle(dx: -3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[10] as? LineElement)?.heading,
                       Angle(dx: -8.83, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[11] as? ArcElement)?.radius, 4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[12] as? LineElement)?.start.x, -62.5)
        XCTAssertEqual((sut[12] as? LineElement)?.end, (-62.5, -138.3))

        XCTAssertEqual((sut[13] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[14] as? LineElement)?.start, (-60.5, -140.3))
        XCTAssertEqual((sut[14] as? LineElement)?.end, (60.5, -140.3))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[15] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[16] as? LineElement)?.start, (62.5, -138.3))
        XCTAssertEqual((sut[16] as? LineElement)?.end.x, 62.5)

        XCTAssertEqual((sut[17] as? ArcElement)?.radius, 4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[18] as? LineElement)?.heading,
                       Angle(dx: -8.83, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[19] as? LineElement)?.heading,
                       Angle(dx: -3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[20] as? ArcElement)?.radius, 7)

        XCTAssertEqual((sut[21] as? LineElement)?.start.x, 7.1)
        XCTAssertEqual((sut[21] as? LineElement)?.end.x, 7.1, accuracy: defaultAccuracy)
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[22] as? ArcElement)?.radius, 7)

        XCTAssertEqual((sut[23] as? LineElement)?.heading,
                       Angle(dx: 3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 4)

        XCTAssertEqual((sut[25] as? LineElement)?.heading,
                       Angle(degrees: 90),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[26] as? ArcElement)?.radius, 13)

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 80)
        XCTAssertEqual((sut[27] as? ArcElement)?.startPoint.x, 24.8985, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[28] as? ArcElement)?.radius, 300)
        XCTAssertEqual((sut[28] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[28] as? ArcElement)?.startPoint.x, 9.629, accuracy: defaultAccuracy)
    }
}
