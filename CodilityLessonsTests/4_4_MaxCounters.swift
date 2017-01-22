//
//  4_4_MaxCounters.swift
//  CodilityLessons
//
//  Created by Agustin Prats on 14/01/2017.
//  Copyright © 2017 Codifilia. All rights reserved.
//

import Foundation

import UIKit
import XCTest


class MaxCounters : XCTestCase {
    
    public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
        var counters = Array<Int>()
        (1...N).forEach {_ in counters.append(0) }
        
        var max = 0
        var min = 0
        for e in A {
            if e >= 1 && e <= N {
                if counters[e - 1] < min {
                    counters[e - 1 ] = min + 1
                }
                else {
                    counters[e - 1] += 1
                }
                
                if counters[e - 1] > max {
                    max = counters[e - 1]
                }
            }
            else {
                min = max
            }
        }
        
        for i in 0...N - 1 {
            if counters[i] < min {
                counters[i] = min
            }
        }
        
        return counters
    }
    
    public func test() {
        var a = [3, 4, 4, 6, 1, 4, 4]
        XCTAssertEqual([1], solution(1, &a))
        
        a = [3, 4, 4, 6, 1, 4, 4]
        XCTAssertEqual([3, 2, 2, 4, 2], solution(5, &a))
    }
}
