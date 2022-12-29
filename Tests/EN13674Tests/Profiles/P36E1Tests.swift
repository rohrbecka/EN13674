//
//  P36E1Tests.swift
//  
//
//  Created by André Rohrbeck on 28.12.22.
//

import XCTest
@testable import EN13674

internal final class P36E1Tests: XCTestCase {

    let sut = P36E1.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements[0...13]),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees)
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements[15...28]),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 200, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -17.922, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 29, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[1] as? ArcElement)?.endPoint?.x, -19.8895, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? ArcElement)?.radius, 12, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[3] as? LineElement)?.heading,
                       Angle(degrees: 270),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[4] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[5] as? LineElement)?.heading,
                       Angle(dx: 2, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 9, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? LineElement)?.start.x, -7, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? LineElement)?.end.x, -7, accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[8] as? ArcElement)?.radius, 9, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[9] as? LineElement)?.heading,
                       Angle(dx: -2, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[10] as? ArcElement)?.radius, 8, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[11] as? LineElement)?.heading,
                       Angle(dx: -5.56, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[12] as? ArcElement)?.radius, 6, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[13] as? LineElement)?.start.x, -50)
        XCTAssertEqual((sut[13] as? LineElement)?.end, (-50, -130))

        XCTAssertEqual((sut[14] as? LineElement)?.start, (-50, -130))
        XCTAssertEqual((sut[14] as? LineElement)?.end, (50, -130))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[15] as? LineElement)?.start, (50, -130))
        XCTAssertEqual((sut[15] as? LineElement)?.end.x, 50, accuracy: 0.5)

        XCTAssertEqual((sut[16] as? ArcElement)?.radius, 6, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[17] as? LineElement)?.heading,
                       Angle(dx: -5.56, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[18] as? ArcElement)?.radius, 8, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[19] as? LineElement)?.heading,
                       Angle(dx: -2, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[20] as? ArcElement)?.radius, 9)

        XCTAssertEqual((sut[21] as? LineElement)?.start.x, 7)
        XCTAssertEqual((sut[21] as? LineElement)?.end.x, 7)
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[22] as? ArcElement)?.radius, 9)

        XCTAssertEqual((sut[23] as? LineElement)?.heading,
                       Angle(dx: 2, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 3)

        XCTAssertEqual((sut[25] as? LineElement)?.heading,
                       Angle(degrees: 90),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[26] as? ArcElement)?.radius, 12)

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 29)
        XCTAssertEqual((sut[27] as? ArcElement)?.startPoint.x, 19.8895, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[28] as? ArcElement)?.radius, 200)
        XCTAssertEqual((sut[28] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[28] as? ArcElement)?.startPoint.x, 17.922, accuracy: defaultAccuracy)
    }

}
