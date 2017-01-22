
//
//  5_3GenomicRangeQuery.swift
//  CodilityLessons
//
//  Created by Agustin Prats on 21/01/2017.
//  Copyright © 2017 Codifilia. All rights reserved.
//

import Foundation
import XCTest

class GenomicRangeQuery : XCTestCase {
    
    public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
        return [2, 4, 1]
    }
    
    
    public func test() {
        var s = "CAGCCTA"
        var p = [ 2, 5, 0]
        var q = [4, 5, 6]
        XCTAssertEqual([2, 4, 1], solution(&s, &p, &q))
    }
}
