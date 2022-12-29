//
//  P46E3Tests.swift
//  
//
//  Created by André Rohrbeck on 23.10.22.
//

import XCTest
@testable import EN13674
@testable import ProfilePath

internal final class P46E3Tests: XCTestCase {

    let sut = P46E3.profile



    func testThatAllElementsAreTangentiallyConnected() {
        XCTAssertAllElementsTangentiallyConnected(sut.elements, accuracyDegrees: defaultAngleAccuracyDegrees)
    }



    func testPathUpperLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[0] as? ArcElement)?.start, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.radius, 300, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -11.5075, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 80, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[1] as? ArcElement)?.endPoint?.x, -26.8805, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? ArcElement)?.radius, 13, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[3] as? LineElement)?.heading,
                       Angle(dx: -1, dy: -16.5),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[4] as? ArcElement)?.radius, 1.5, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[5] as? LineElement)?.heading,
                       Angle(dx: 4, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[6] as? ArcElement)?.radius, 6, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? ArcElement)?.radius, 80, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? ArcElement)?.center, (-87, -62), accuracy: defaultAccuracy)

        XCTAssertEqual((sut[8] as? LineElement)?.start, (-7, -62), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[8] as? LineElement)?.end, (-7, -92), accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[9] as? ArcElement)?.radius, 120, accuracy: defaultAccuracy)
        XCTAssertEqual((sut[9] as? ArcElement)?.center, (-127, -92), accuracy: defaultAccuracy)

        XCTAssertEqual((sut[10] as? ArcElement)?.radius, 6, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[11] as? LineElement)?.heading,
                       Angle(dx: -4, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[12] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[13] as? LineElement)?.end, (-60, -141))

        XCTAssertEqual((sut[14] as? ArcElement)?.radius, 1, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[15] as? LineElement)?.start, (-59, -142))
        XCTAssertEqual((sut[15] as? LineElement)?.end, (59, -142))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[16] as? ArcElement)?.radius, 1, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[17] as? LineElement)?.start, (60, -141))

        XCTAssertEqual((sut[18] as? ArcElement)?.radius, 3, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[19] as? LineElement)?.heading,
                       Angle(dx: -4, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[20] as? ArcElement)?.radius, 6)

        XCTAssertEqual((sut[21] as? ArcElement)?.radius, 120)
        XCTAssertEqual((sut[21] as? ArcElement)?.center, (127, -92) )

        XCTAssertEqual((sut[22] as? LineElement)?.start, (7, -92))
        XCTAssertEqual((sut[22] as? LineElement)?.end, (7, -62))
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[23] as? ArcElement)?.radius, 80)
        XCTAssertEqual((sut[23] as? ArcElement)?.center, (87, -62) )

        XCTAssertEqual((sut[24] as? ArcElement)?.radius, 6)

        XCTAssertEqual((sut[25] as? LineElement)?.heading,
                       Angle(dx: 4, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[26] as? ArcElement)?.radius, 1.5)

        XCTAssertEqual((sut[27] as? LineElement)?.heading,
                       Angle(dx: -1, dy: 16.5),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[28] as? ArcElement)?.radius, 13)

        XCTAssertEqual((sut[29] as? ArcElement)?.radius, 80)
        XCTAssertEqual((sut[29] as? ArcElement)?.startPoint.x, 26.8805, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[30] as? ArcElement)?.radius, 300)
        XCTAssertEqual((sut[30] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[30] as? ArcElement)?.startPoint.x, 11.5075, accuracy: defaultAccuracy)
    }
}
