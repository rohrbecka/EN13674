//
//  P27E1Tests.swift
//  
//
//  Created by André Rohrbeck on 28.12.22.
//

import XCTest
@testable import EN13674
@testable import ProfilePath

internal final class P27E1Tests: XCTestCase {

    let sut = P27E1.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements[0...6]),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees,
                                                  accuracy: defaultAccuracy)
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements[8...14]),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees,
                                                  accuracy: defaultAccuracy)
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements[16...22]),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees,
                                                  accuracy: defaultAccuracy)
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements[24...30]),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees,
                                                  accuracy: defaultAccuracy)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 200, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -13.833, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 12, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? LineElement)?.heading,
                       Angle(degrees: 270),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[3] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[4] as? LineElement)?.heading,
                       Angle(dx: 3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[5] as? ArcElement)?.radius, 8, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[6] as? LineElement)?.end, (-5.5, -53.0), accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? LineElement)?.start, (-5.5, -53), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? LineElement)?.end, (-5.5, -83), accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[8] as? LineElement)?.start, (-5.5, -83), accuracy: defaultAccuracy)

        XCTAssertEqual((sut[9] as? ArcElement)?.radius, 8, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[10] as? LineElement)?.heading,
                       Angle(dx: -3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[11] as? ArcElement)?.radius, 8, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[12] as? LineElement)?.heading,
                       Angle(dx: -8.33, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[13] as? ArcElement)?.radius, 4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[14] as? LineElement)?.start.x, -47.5)
        XCTAssertEqual((sut[14] as? LineElement)?.end, (-47.5, -120))

        XCTAssertEqual((sut[15] as? LineElement)?.start, (-47.5, -120))
        XCTAssertEqual((sut[15] as? LineElement)?.end, (47.5, -120))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[16] as? LineElement)?.start, (47.5, -120))
        XCTAssertEqual((sut[16] as? LineElement)?.end.x, 47.5, accuracy: 0.5)

        XCTAssertEqual((sut[17] as? ArcElement)?.radius, 4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[18] as? LineElement)?.heading,
                       Angle(dx: -8.33, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[19] as? ArcElement)?.radius, 8)

        XCTAssertEqual((sut[20] as? LineElement)?.heading,
                       Angle(dx: -3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[21] as? ArcElement)?.radius, 8)

        XCTAssertEqual((sut[22] as? LineElement)?.end, (5.5, -83), accuracy: defaultAccuracy)

        XCTAssertEqual((sut[23] as? LineElement)?.start, (5.5, -83), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[23] as? LineElement)?.end, (5.5, -53), accuracy: defaultAccuracy)
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[24] as? LineElement)?.start, (5.5, -53), accuracy: defaultAccuracy)

        XCTAssertEqual((sut[25] as? ArcElement)?.radius, 8)

        XCTAssertEqual((sut[26] as? LineElement)?.heading,
                       Angle(dx: 3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[28] as? LineElement)?.heading,
                       Angle(degrees: 90),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[29] as? ArcElement)?.radius, 12)

        XCTAssertEqual((sut[30] as? ArcElement)?.radius, 200)
        XCTAssertEqual((sut[30] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[30] as? ArcElement)?.startPoint.x, 13.833, accuracy: defaultAccuracy)
    }

}
