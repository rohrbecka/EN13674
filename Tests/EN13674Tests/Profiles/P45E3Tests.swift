//
//  P45E3Tests.swift
//  
//
//  Created by André Rohrbeck on 28.12.22.
//

import XCTest
@testable import EN13674
@testable import ProfilePath

internal final class P45E3Tests: XCTestCase {

    let sut = P45E3.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(Array(sut.elements), accuracyDegrees: defaultAngleAccuracyDegrees)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 305, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -25.6735, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 8, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? LineElement)?.heading,
                       Angle(degrees: 270),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[3] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[4] as? LineElement)?.heading,
                       Angle(dx: 4, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[5] as? ArcElement)?.radius, 6, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 305, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[6] as? ArcElement)?.center, (-312.5, -79.50), accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[7] as? ArcElement)?.radius, 6, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[8] as? LineElement)?.heading,
                       Angle(dx: -4, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[9] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[10] as? LineElement)?.start.x, -65)
        XCTAssertEqual((sut[10] as? LineElement)?.end, (-65, -140))

        XCTAssertEqual((sut[11] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[12] as? LineElement)?.start, (-63, -142))
        XCTAssertEqual((sut[12] as? LineElement)?.end, (63, -142))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[13] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[14] as? LineElement)?.start, (65, -140))
        XCTAssertEqual((sut[14] as? LineElement)?.end.x, 65)

        XCTAssertEqual((sut[15] as? ArcElement)?.radius, 2, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[16] as? LineElement)?.heading,
                       Angle(dx: -4, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[17] as? ArcElement)?.radius, 6)

        XCTAssertEqual((sut[18] as? ArcElement)?.radius, 305)
        XCTAssertEqual((sut[18] as? ArcElement)?.center, (312.5, -79.5), accuracy: defaultAccuracy)
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[19] as? ArcElement)?.radius, 6)

        XCTAssertEqual((sut[20] as? LineElement)?.heading,
                       Angle(dx: 4, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[21] as? ArcElement)?.radius, 2)

        XCTAssertEqual((sut[22] as? LineElement)?.heading,
                       Angle(degrees: 90),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[23] as? ArcElement)?.radius, 8)

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 305)
        XCTAssertEqual((sut[24] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[24] as? ArcElement)?.startPoint.x, 25.6735, accuracy: defaultAccuracy)
    }
}
