//
//  P46E4Tests.swift
//  
//
//  Created by André Rohrbeck on 23.10.22.
//

import XCTest
@testable import EN13674
@testable import ProfilePath

internal final class P46E4Tests: XCTestCase {

    let sut = P46E4.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements[0...6]),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees)
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements[8...20]),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees)
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements[22...28]),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 400, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -19.189, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 14, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? LineElement)?.heading,
                       Angle(dx: -1, dy: -20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[3] as? ArcElement)?.radius, 1, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[4] as? LineElement)?.heading,
                       Angle(dx: 4, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[5] as? ArcElement)?.radius, 5, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[6] as? LineElement)?.endPoint, (-7, -67.5), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[6] as? LineElement)?.heading,
                       Angle(dx: 1, dy: -22.5),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[7] as? LineElement)?.start, (-7, -67.5), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? LineElement)?.end, (-7, -97.5), accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[8] as? LineElement)?.startPoint, (-7, -97.5), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[8] as? LineElement)?.heading,
                       Angle(dx: -2, dy: -22.5),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[9] as? ArcElement)?.radius, 5, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[10] as? LineElement)?.heading,
                       Angle(dx: -4, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[11] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[12] as? LineElement)?.end, (-67.5, -144))

        XCTAssertEqual((sut[13] as? ArcElement)?.radius, 1, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[14] as? LineElement)?.start, (-66.5, -145))
        XCTAssertEqual((sut[14] as? LineElement)?.end, (66.5, -145))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[15] as? ArcElement)?.radius, 1, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[16] as? LineElement)?.start, (67.5, -144))

        XCTAssertEqual((sut[17] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[18] as? LineElement)?.heading,
                       Angle(dx: -4, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[19] as? ArcElement)?.radius, 5)

        XCTAssertEqual((sut[20] as? LineElement)?.end, (7, -97.5))
        XCTAssertEqual((sut[20] as? LineElement)?.heading,
                       Angle(dx: -2, dy: 22.5),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[21] as? LineElement)?.start, (7, -97.5))
        XCTAssertEqual((sut[21] as? LineElement)?.end, (7, -67.5))
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[22] as? LineElement)?.start, (7, -67.5))
        XCTAssertEqual((sut[22] as? LineElement)?.heading,
                       Angle(dx: 1, dy: 22.5),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[23] as? ArcElement)?.radius, 5)

        XCTAssertEqual((sut[24] as? LineElement)?.heading,
                       Angle(dx: 4, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[25] as? ArcElement)?.radius, 1)

        XCTAssertEqual((sut[26] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 14)

        XCTAssertEqual((sut[28] as? ArcElement)?.radius, 400)
        XCTAssertEqual((sut[28] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[28] as? ArcElement)?.startPoint.x, 19.189, accuracy: defaultAccuracy)
    }
}
