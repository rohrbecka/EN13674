//
//  P49E5Tests.swift
//  
//
//  Created by André Rohrbeck on 23.10.22.
//

import XCTest
@testable import EN13674

internal final class P49E5Tests: XCTestCase {

    let sut = P49E5.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(sut.elements, accuracyDegrees: defaultAngleAccuracyDegrees)
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

        XCTAssertEqual((sut[5] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[6] as? LineElement)?.heading,
                       Angle(dx: 3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[7] as? ArcElement)?.radius, 7, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[8] as? ArcElement)?.radius, 80, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[8] as? ArcElement)?.center.y, -67, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[9] as? LineElement)?.start, (-7, -67), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[9] as? LineElement)?.end, (-7, -97), accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[10] as? ArcElement)?.radius, 120, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[10] as? ArcElement)?.center.y, -97, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[11] as? ArcElement)?.radius, 7, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[12] as? LineElement)?.heading,
                       Angle(dx: -3, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[13] as? ArcElement)?.radius, 40, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[14] as? LineElement)?.heading,
                       Angle(dx: -7.81, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[15] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[16] as? LineElement)?.start, (-62.5, -141.5), accuracy: 0.5)
        XCTAssertEqual((sut[16] as? LineElement)?.end, (-62.5, -147))

        XCTAssertEqual((sut[17] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[18] as? LineElement)?.start, (-60.5, -149))
        XCTAssertEqual((sut[18] as? LineElement)?.end, (60.5, -149))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[19] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[20] as? LineElement)?.start, (62.5, -147))
        XCTAssertEqual((sut[20] as? LineElement)?.end, (62.5, -141.5), accuracy: 0.5)

        XCTAssertEqual((sut[21] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[22] as? LineElement)?.heading,
                       Angle(dx: -7.81, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[23] as? ArcElement)?.radius, 40, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[24] as? LineElement)?.heading,
                       Angle(dx: -3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[25] as? ArcElement)?.radius, 7)

        XCTAssertEqual((sut[26] as? ArcElement)?.radius, 120)
        XCTAssertEqual((sut[26] as? ArcElement)?.center.y, -97)

        XCTAssertEqual((sut[27] as? LineElement)?.start, (7, -97), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[27] as? LineElement)?.end, (7, -67), accuracy: defaultAccuracy)
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[28] as? ArcElement)?.radius, 80)
        XCTAssertEqual((sut[28] as? ArcElement)?.center.y, -67)

        XCTAssertEqual((sut[29] as? ArcElement)?.radius, 7)

        XCTAssertEqual((sut[30] as? LineElement)?.heading,
                       Angle(dx: 3, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[31] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[32] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 17.2),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[33] as? ArcElement)?.radius, 7.64)

        XCTAssertEqual((sut[34] as? ArcElement)?.radius, 15.5)
        XCTAssertEqual((sut[34] as? ArcElement)?.startPoint.x, 33)

        XCTAssertEqual((sut[35] as? ArcElement)?.radius, 16.5)
        XCTAssertEqual((sut[35] as? ArcElement)?.startPoint.x, 31.49, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[36] as? ArcElement)?.radius, 115)
        XCTAssertEqual((sut[36] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[36] as? ArcElement)?.startPoint.x, 20.671, accuracy: defaultAccuracy)
    }
}
