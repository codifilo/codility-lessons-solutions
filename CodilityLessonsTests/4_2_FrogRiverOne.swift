//
//  4_2_FrogRiverOne.swift
//  CodilityLessons
//
//  Created by Agustin Prats on 14/01/2017.
//  Copyright © 2017 Codifilia. All rights reserved.
//

import UIKit
import XCTest


class FrogRiverOne : XCTestCase {

    public func solution(_ X : Int, _ A : inout [Int]) -> Int {
        var leavesMissing = Set<Int>()
        for leave in 1...X {
            leavesMissing.insert(leave)
        }
        
        for (second, leave) in A.enumerated() {
            leavesMissing.remove(leave)
            if leavesMissing.isEmpty {
                return second
            }
        }
        
        return -1
    }
    
    public func test() {
        var a = [1, 3, 1, 4, 2, 3, 5, 4]
        XCTAssertEqual(6, solution(5, &a))
    }
}
