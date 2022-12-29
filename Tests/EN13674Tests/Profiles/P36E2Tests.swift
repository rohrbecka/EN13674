//
//  P36E2Tests.swift
//  
//
//  Created by André Rohrbeck on 28.12.22.
//

import XCTest
@testable import EN13674
@testable import ProfilePath

internal final class P36E2Tests: XCTestCase {

    let sut = P36E2.profile



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
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -11.956, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 60, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[1] as? ArcElement)?.endPoint?.x, -18.3035, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? ArcElement)?.radius, 13, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[3] as? LineElement)?.heading,
                       Angle(dx: -1, dy: -20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[4] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[5] as? LineElement)?.heading,
                       Angle(dx: 3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 7, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? LineElement)?.start.x, -6.5, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? LineElement)?.end.x, -6.5, accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[8] as? ArcElement)?.radius, 7, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[9] as? LineElement)?.heading,
                       Angle(dx: -3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[10] as? ArcElement)?.radius, 28, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[11] as? LineElement)?.heading,
                       Angle(dx: -10, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[12] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[13] as? LineElement)?.start.x, -57.5)
        XCTAssertEqual((sut[13] as? LineElement)?.end, (-57.5, -126))

        XCTAssertEqual((sut[14] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[15] as? LineElement)?.start, (-55.5, -128))
        XCTAssertEqual((sut[15] as? LineElement)?.end, (55.5, -128))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[16] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[17] as? LineElement)?.start, (57.5, -126))
        XCTAssertEqual((sut[17] as? LineElement)?.end.x, 57.5)

        XCTAssertEqual((sut[18] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[19] as? LineElement)?.heading,
                       Angle(dx: -10, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[20] as? ArcElement)?.radius, 28, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[21] as? LineElement)?.heading,
                       Angle(dx: -3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[22] as? ArcElement)?.radius, 7)

        XCTAssertEqual((sut[23] as? LineElement)?.start.x, 6.5)
        XCTAssertEqual((sut[23] as? LineElement)?.end.x, 6.5)
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 7)

        XCTAssertEqual((sut[25] as? LineElement)?.heading,
                       Angle(dx: 3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[26] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[27] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[28] as? ArcElement)?.radius, 13)

        XCTAssertEqual((sut[29] as? ArcElement)?.radius, 60)
        XCTAssertEqual((sut[29] as? ArcElement)?.startPoint.x, 18.3035, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[30] as? ArcElement)?.radius, 200)
        XCTAssertEqual((sut[30] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[30] as? ArcElement)?.startPoint.x, 11.956, accuracy: defaultAccuracy)
    }

}
