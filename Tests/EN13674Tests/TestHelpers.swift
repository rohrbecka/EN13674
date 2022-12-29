//
//  TestHelpers.swift
//  
//
//  Created by André Rohrbeck on 01.11.22.
//

import XCTest
@testable import EN13674
import ProfilePath


internal func XCTAssertEqual(_ point1: CGPoint?,
                             _ tuple2: (CGFloat, CGFloat),
                             accuracy: CGFloat = 0,
                             message: String = "",
                             file: StaticString = #file,
                             line: UInt = #line) {
    guard let point1 else {
        XCTFail("Point1 was not defined", file: file, line: line); return
    }
    let point2 = CGPoint(x: tuple2.0, y: tuple2.1)
    let distance = point1.distance(to: point2)
    if distance > accuracy {
        XCTFail("\(message); distance between \(point1) and \(point2) was higher than \(accuracy).",
                file: file,
                line: line)
    }
}



internal func XCTAssertEqual(_ value1: CGFloat?,
                             _ value2: CGFloat?,
                             accuracy: CGFloat = 0,
                             _ message: String = "",
                             file: StaticString = #file,
                             line: UInt = #line) {
    guard let value1,
          let value2 else {
        XCTFail("Value 1 was not defined", file: file, line: line); return
    }
    XCTAssertEqual(value1, value2, accuracy: accuracy, message, file: file, line: line)
}



internal func XCTAssertEqual(_ angle1: Angle?,
                             _ angle2: Angle,
                             accuracyDegrees: CGFloat = 0,
                             message: String = "",
                             file: StaticString = #file,
                             line: UInt = #line) {
    guard let angle1 else {
        XCTFail("One of the angles was not defined.", file: file, line: line); return
    }

    XCTAssertEqual(angle1.degrees, angle2.degrees, accuracy: accuracyDegrees, message, file: file, line: line)
}



internal func XCTAssertAllElementsTangentiallyConnected(_ pathElements: [PathElement],
                                                        _ message: String = "",
                                                        accuracyDegrees: CGFloat = 0,
                                                        file: StaticString = #file,
                                                        line: UInt = #line) {
    guard pathElements.count > 1 else {
        XCTFail("The path provided consists of less than two elements. Checking whether they are aligned" +
                " tangentially is not possible.")
        return
    }
    for index in pathElements.dropLast().indices {
        XCTAssertEqual(pathElements[index].endHeading,
                       pathElements[index+1].startHeading,
                       accuracyDegrees: accuracyDegrees,
                       file: file,
                       line: line)
    }
}
