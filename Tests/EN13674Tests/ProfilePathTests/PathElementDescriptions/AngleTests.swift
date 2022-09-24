//
//  AngleTests.swift
//  
//
//  Created by André Rohrbeck on 23.09.22.
//

import XCTest
import EN13674

final class AngleTests: XCTestCase {

    func testCreationOfAngleBasedOnRadiansValue() {
        let sut0 = Angle(radians: 0.0)
        let sut90 = Angle(radians: Double.pi/2.0)
        let sut180 = Angle(radians: Double.pi)
        let sut270 = Angle(radians: Double.pi/2.0*3.0)

        XCTAssertEqual(sut0.rad, 0.0)
        XCTAssertEqual(sut90.rad, Double.pi/2.0)
        XCTAssertEqual(sut180.rad, Double.pi)
        XCTAssertEqual(sut270.rad, Double.pi/2.0*3.0)
    }



    func testCreationOfAngleBasedOnDegreesValue() {
        let sut0 = Angle(degrees: 0.0)
        let sut90 = Angle(degrees: 90.0)
        let sut180 = Angle(degrees: 180.0)
        let sut270 = Angle(degrees: 270.0)

        XCTAssertEqual(sut0.rad, 0.0)
        XCTAssertEqual(sut90.rad, Double.pi/2.0)
        XCTAssertEqual(sut180.rad, Double.pi)
        XCTAssertEqual(sut270.rad, Double.pi/2.0*3.0)
    }



    func testReturnOfNormalisedRadiansValue() {
        let sut0 = Angle(radians: Double.pi/2.0*5.0)
        let sut1 = Angle(radians: -Double.pi/2.0*5.0)

        XCTAssertEqual(sut0.rad, Double.pi/2.0)
        XCTAssertEqual(sut1.rad, Double.pi/2.0*3.0)
    }



    func testReturnOfNormalisedDegreesValue() {
        let sut0 = Angle(radians: Double.pi/2.0*5.0)
        let sut1 = Angle(radians: -Double.pi/2.0*5.0)

        XCTAssertEqual(sut0.degrees, 90.0)
        XCTAssertEqual(sut1.degrees, 270.0)
    }
}
