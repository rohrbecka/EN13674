//
//  P30E2Tests.swift
//  
//
//  Created by André Rohrbeck on 28.12.22.
//

import XCTest
@testable import EN13674
@testable import ProfilePath

internal final class P30E2Tests: XCTestCase {

    let sut = P30E2.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees,
                                                  accuracy: defaultAccuracy)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 305, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -19.7005, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 9.5, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? LineElement)?.heading,
                       Angle(dx: -1, dy: -20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[3] as? ArcElement)?.radius, 1.6, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[4] as? LineElement)?.heading,
                       Angle(dx: 2.75, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[5] as? ArcElement)?.radius, 8, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 22.22, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[6] as? ArcElement)?.center.y, -44.45, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? ArcElement)?.radius, 508, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? ArcElement)?.center, (-513.555, -57.94), accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[8] as? ArcElement)?.radius, 9.5, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[9] as? LineElement)?.heading,
                       Angle(dx: -2.75, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[10] as? ArcElement)?.radius, 13, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[11] as? LineElement)?.heading,
                       Angle(dx: -6, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[12] as? ArcElement)?.radius, 4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[13] as? LineElement)?.start.x, -54.77)
        XCTAssertEqual((sut[13] as? LineElement)?.end, (-54.77, -112.7))

        XCTAssertEqual((sut[14] as? ArcElement)?.radius, 1.6, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[15] as? LineElement)?.start, (-53.17, -114.3))
        XCTAssertEqual((sut[15] as? LineElement)?.end, (53.17, -114.3))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[16] as? ArcElement)?.radius, 1.6, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[17] as? LineElement)?.start, (54.77, -112.7))
        XCTAssertEqual((sut[17] as? LineElement)?.end.x, 54.77, accuracy: 0.5)

        XCTAssertEqual((sut[18] as? ArcElement)?.radius, 4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[19] as? LineElement)?.heading,
                       Angle(dx: -6, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[20] as? ArcElement)?.radius, 13, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[21] as? LineElement)?.heading,
                       Angle(dx: -2.75, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[22] as? ArcElement)?.radius, 9.5)

        XCTAssertEqual((sut[23] as? ArcElement)?.radius, 508)
        XCTAssertEqual((sut[23] as? ArcElement)?.center, (513.555, -57.94))
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 22.22)
        XCTAssertEqual((sut[24] as? ArcElement)?.center.y, -44.45, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[25] as? ArcElement)?.radius, 8)

        XCTAssertEqual((sut[26] as? LineElement)?.heading,
                       Angle(dx: 2.75, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 1.6)

        XCTAssertEqual((sut[28] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 20),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[29] as? ArcElement)?.radius, 9.5)

        XCTAssertEqual((sut[30] as? ArcElement)?.radius, 305)
        XCTAssertEqual((sut[30] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[30] as? ArcElement)?.startPoint.x, 19.7005, accuracy: defaultAccuracy)
    }

}
