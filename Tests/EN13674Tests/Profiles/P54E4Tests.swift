//
//  P54E4Tests.swift
//  
//
//  Created by André Rohrbeck on 23.10.22.
//

import XCTest
@testable import EN13674
@testable import ProfilePath

internal final class P54E4Tests: XCTestCase {

    let sut = P54E4.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(sut.elements, accuracyDegrees: defaultAngleAccuracyDegrees,
                                                  accuracy: defaultAccuracy)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 115, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -20.671, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 16.5, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[1] as? ArcElement)?.endPoint?.x, -31.49, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? ArcElement)?.radius, 15.5, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[2] as? ArcElement)?.endPoint?.x, -33, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[3] as? ArcElement)?.radius, 7.64, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[4] as? LineElement)?.heading,
                       Angle(dx: -1, dy: -17.2),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[5] as? ArcElement)?.radius, 5, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[6] as? LineElement)?.heading,
                       Angle(dx: 3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[7] as? ArcElement)?.radius, 16, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[8] as? ArcElement)?.radius, 500, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[8] as? ArcElement)?.center, (-508, -79), accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[9] as? ArcElement)?.radius, 16, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[10] as? LineElement)?.heading,
                       Angle(dx: -3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[11] as? ArcElement)?.radius, 40, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[12] as? LineElement)?.heading,
                       Angle(dx: -7.81, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[13] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[14] as? LineElement)?.start, (-62.5, -145), accuracy: 0.5)
        XCTAssertEqual((sut[14] as? LineElement)?.end, (-62.5, -152))

        XCTAssertEqual((sut[15] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[16] as? LineElement)?.start, (-60.5, -154))
        XCTAssertEqual((sut[16] as? LineElement)?.end, (60.5, -154))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[17] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[18] as? LineElement)?.start, (62.5, -152))
        XCTAssertEqual((sut[18] as? LineElement)?.end, (62.5, -145), accuracy: 0.5)

        XCTAssertEqual((sut[19] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[20] as? LineElement)?.heading,
                       Angle(dx: -7.81, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[21] as? ArcElement)?.radius, 40, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[22] as? LineElement)?.heading,
                       Angle(dx: -3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[23] as? ArcElement)?.radius, 16)

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 500)
        XCTAssertEqual((sut[24] as? ArcElement)?.center, (508, -79), accuracy: defaultAccuracy)
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[25] as? ArcElement)?.radius, 16)

        XCTAssertEqual((sut[26] as? LineElement)?.heading,
                       Angle(dx: 3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 5)

        XCTAssertEqual((sut[28] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 17.2),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[29] as? ArcElement)?.radius, 7.64)

        XCTAssertEqual((sut[30] as? ArcElement)?.radius, 15.5)
        XCTAssertEqual((sut[30] as? ArcElement)?.startPoint.x, 33.0, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[31] as? ArcElement)?.radius, 16.5)
        XCTAssertEqual((sut[31] as? ArcElement)?.startPoint.x, 31.49, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[32] as? ArcElement)?.radius, 115)
        XCTAssertEqual((sut[32] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[32] as? ArcElement)?.startPoint.x, 20.671, accuracy: defaultAccuracy)
    }
}
