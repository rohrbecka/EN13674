//
//  P35E1Tests.swift
//  
//
//  Created by André Rohrbeck on 28.12.22.
//

import XCTest
@testable import EN13674
@testable import ProfilePath

internal final class P35E1Tests: XCTestCase {

    let sut = P35E1.profile



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
        XCTAssertEqual((sut[0] as? ArcElement)?.endPoint?.x, -20, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[1] as? ArcElement)?.radius, 10, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[2] as? LineElement)?.heading,
                       Angle(degrees: 270),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[3] as? ArcElement)?.radius, 4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[4] as? LineElement)?.heading,
                       Angle(dx: 2.5, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[5] as? ArcElement)?.radius, 5, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[6] as? LineElement)?.end, (-6, -62), accuracy: defaultAccuracy)

        XCTAssertEqual((sut[7] as? LineElement)?.start, (-6, -62), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[7] as? LineElement)?.end, (-6, -82), accuracy: defaultAccuracy)
    }



    func testPathLowerLeft() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[8] as? LineElement)?.start, (-6, -82), accuracy: defaultAccuracy)

        XCTAssertEqual((sut[9] as? ArcElement)?.radius, 5, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[10] as? LineElement)?.heading,
                       Angle(dx: -2.5, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[11] as? ArcElement)?.radius, 10, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[12] as? LineElement)?.heading,
                       Angle(dx: -5, dy: -1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[13] as? ArcElement)?.radius, 4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[14] as? LineElement)?.start.x, -55)
        XCTAssertEqual((sut[14] as? LineElement)?.end, (-55, -125))

        XCTAssertEqual((sut[15] as? LineElement)?.start, (-55, -125))
        XCTAssertEqual((sut[15] as? LineElement)?.end, (55, -125))
    }



    func testPathLowerRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[16] as? LineElement)?.start, (55, -125))
        XCTAssertEqual((sut[16] as? LineElement)?.end.x, 55, accuracy: 0.5)

        XCTAssertEqual((sut[17] as? ArcElement)?.radius, 4, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[18] as? LineElement)?.heading,
                       Angle(dx: -5, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[19] as? ArcElement)?.radius, 10, accuracy: defaultAccuracy)

        XCTAssertEqual((sut[20] as? LineElement)?.heading,
                       Angle(dx: -2.5, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[21] as? ArcElement)?.radius, 5)

        XCTAssertEqual((sut[22] as? LineElement)?.end, (6, -82))

        XCTAssertEqual((sut[23] as? LineElement)?.start, (6, -82))
        XCTAssertEqual((sut[23] as? LineElement)?.end, (6, -62))
    }



    func testPathUpperRight() {
        let sut = self.sut.elements

        XCTAssertEqual((sut[24] as? LineElement)?.start, (6, -62))

        XCTAssertEqual((sut[25] as? ArcElement)?.radius, 5)

        XCTAssertEqual((sut[26] as? LineElement)?.heading,
                       Angle(dx: 2.5, dy: 1),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[27] as? ArcElement)?.radius, 4)

        XCTAssertEqual((sut[28] as? LineElement)?.heading,
                       Angle(degrees: 90),
                       accuracyDegrees: defaultAngleAccuracyDegrees)

        XCTAssertEqual((sut[29] as? ArcElement)?.radius, 10)

        XCTAssertEqual((sut[30] as? ArcElement)?.radius, 200)
        XCTAssertEqual((sut[30] as? ArcElement)?.endPoint, (0, 0), accuracy: defaultAccuracy)
        XCTAssertEqual((sut[30] as? ArcElement)?.startPoint.x, 20, accuracy: defaultAccuracy)
    }

}
