//
//  P36E3Tests.swift
//  
//
//  Created by André Rohrbeck on 28.12.22.
//

import XCTest
@testable import EN13674
@testable import ProfilePath

internal final class P36E3Tests: XCTestCase {

    let sut = P36E3.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements), accuracyDegrees: defaultAngleAccuracyDegrees)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 200, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -18.2005, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 13, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? LineElement)?.heading,
                       Angle(dx: -1, dy: -20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[3] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[4] as? LineElement)?.heading,
                       Angle(dx: 3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[5] as? ArcElement)?.radius, 10, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 80, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[6] as? ArcElement)?.center.y, -56, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? LineElement)?.start.x, -6, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? LineElement)?.end.x, -6, accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[8] as? ArcElement)?.radius, 80, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[8] as? ArcElement)?.center.y, -94, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[9] as? ArcElement)?.radius, 10, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[10] as? LineElement)?.heading,
                       Angle(dx: -3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[11] as? ArcElement)?.radius, 8, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[12] as? LineElement)?.heading,
                       Angle(dx: -8, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[13] as? ArcElement)?.radius, 4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[14] as? LineElement)?.start.x, -50)
        XCTAssertEqual((sut[14] as? LineElement)?.end, (-50, -129))

        XCTAssertEqual((sut[15] as? ArcElement)?.radius, 1)

        XCTAssertEqual((sut[16] as? LineElement)?.start, (-49, -130))
        XCTAssertEqual((sut[16] as? LineElement)?.end, (49, -130))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[17] as? ArcElement)?.radius, 1)

        XCTAssertEqual((sut[18] as? LineElement)?.start, (50, -129))
        XCTAssertEqual((sut[18] as? LineElement)?.end.x, 50)

        XCTAssertEqual((sut[19] as? ArcElement)?.radius, 4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[20] as? LineElement)?.heading,
                       Angle(dx: -8, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[21] as? ArcElement)?.radius, 8, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[22] as? LineElement)?.heading,
                       Angle(dx: -3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[23] as? ArcElement)?.radius, 10)

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 80)
        XCTAssertEqual((sut[24] as? ArcElement)?.center.y, -94)

        XCTAssertEqual((sut[25] as? LineElement)?.start.x, 6)
        XCTAssertEqual((sut[25] as? LineElement)?.end.x, 6)
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[26] as? ArcElement)?.radius, 80)
        XCTAssertEqual((sut[26] as? ArcElement)?.center.y, -56)

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 10)

        XCTAssertEqual((sut[28] as? LineElement)?.heading,
                       Angle(dx: 3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[29] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[30] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[31] as? ArcElement)?.radius, 13)

        XCTAssertEqual((sut[32] as? ArcElement)?.radius, 200)
        XCTAssertEqual((sut[32] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[32] as? ArcElement)?.startPoint.x, 18.2005, accuracy: defaultAccuracy)
    }
}
