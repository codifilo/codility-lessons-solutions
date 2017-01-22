//
//  4_1_MissingIntegerTests.swift
//  CodilityLessons
//
//  Created by Agustin Prats on 14/01/2017.
//  Copyright © 2017 Codifilia. All rights reserved.
//

import UIKit
import XCTest

class MissingIntegerTests : XCTestCase {

    public func solution(_ A : inout [Int]) -> Int {
        var set = Set<Int>()
        A.lazy
            .filter { $0 > 0 }
            .forEach { set.insert($0) }
        
        for i in 1...Int.max {
            if !set.contains(i) {
                return i
            }
        }
        
        return 0
    }
    
    public func test() {
        var a = [1, 3, 6, 4, 1, 2]
        XCTAssertEqual(5, solution(&a))
    }
}
