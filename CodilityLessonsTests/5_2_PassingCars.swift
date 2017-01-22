//
//  5_2_PassingCars.swift
//  CodilityLessons
//
//  Created by Agustin Prats on 21/01/2017.
//  Copyright © 2017 Codifilia. All rights reserved.
//

import Foundation
import XCTest

class PassingCars : XCTestCase {
    
    public func solution(_ A : inout [Int]) -> Int {
        var zeros = 0
        var pairs = 0
        
        for e in A {
            if e == 0 {
                zeros += 1
            }
            else {
                pairs += zeros
                
                guard pairs <= 1000000000 else {
                    return -1
                }
            }
        }
        
        return pairs
    }

    
    public func test() {
        var a = [0, 1, 0 ,1 ,1]
        XCTAssertEqual(5, solution(&a))
    }
}
