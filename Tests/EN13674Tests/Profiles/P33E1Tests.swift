//
//  P33E1Tests.swift
//  
//
//  Created by André Rohrbeck on 28.12.22.
//

import XCTest
@testable import EN13674
@testable import ProfilePath

internal final class P33E1Tests: XCTestCase {

    let sut = P33E1.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements),
                                                  accuracyDegrees: defaultAngleAccuracyDegrees)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 225, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -15.9955, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 14, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? LineElement)?.heading,
                       Angle(degrees: 270),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[3] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[4] as? LineElement)?.heading,
                       Angle(dx: 4, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[5] as? ArcElement)?.radius, 6, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 100, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[6] as? ArcElement)?.center.y, -57, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? LineElement)?.start, (-5.5, -57), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? LineElement)?.end, (-5.5, -87), accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[8] as? ArcElement)?.radius, 160, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[8] as? ArcElement)?.center.y, -87, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[9] as? ArcElement)?.radius, 6, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[10] as? LineElement)?.heading,
                       Angle(dx: -4, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[11] as? ArcElement)?.radius, 10, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[12] as? LineElement)?.heading,
                       Angle(dx: -13.67, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[13] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[14] as? LineElement)?.start.x, -52.5)
        XCTAssertEqual((sut[14] as? LineElement)?.end, (-52.5, -132))

        XCTAssertEqual((sut[15] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[16] as? LineElement)?.start, (-50.5, -134))
        XCTAssertEqual((sut[16] as? LineElement)?.end, (50.5, -134))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[17] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[18] as? LineElement)?.start, (52.5, -132))
        XCTAssertEqual((sut[18] as? LineElement)?.end.x, 52.5, accuracy: 0.5)

        XCTAssertEqual((sut[19] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[20] as? LineElement)?.heading,
                       Angle(dx: -13.67, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[21] as? ArcElement)?.radius, 10, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[22] as? LineElement)?.heading,
                       Angle(dx: -4, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[23] as? ArcElement)?.radius, 6)

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 160)
        XCTAssertEqual((sut[24] as? ArcElement)?.center.y, -87)

        XCTAssertEqual((sut[25] as? LineElement)?.start, (5.5, -87))
        XCTAssertEqual((sut[25] as? LineElement)?.end, (5.5, -57))
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[26] as? ArcElement)?.radius, 100)
        XCTAssertEqual((sut[26] as? ArcElement)?.center.y, -57)

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 6)

        XCTAssertEqual((sut[28] as? LineElement)?.heading,
                       Angle(dx: 4, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[29] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[30] as? LineElement)?.heading,
                       Angle(degrees: 90),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[31] as? ArcElement)?.radius, 14)

        XCTAssertEqual((sut[32] as? ArcElement)?.radius, 225)
        XCTAssertEqual((sut[32] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[32] as? ArcElement)?.startPoint.x, 15.9955, accuracy: defaultAccuracy)
    }

}
