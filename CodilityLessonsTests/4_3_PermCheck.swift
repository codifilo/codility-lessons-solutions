//
//  4_3_PermCheck.swift
//  CodilityLessons
//
//  Created by Agustin Prats on 14/01/2017.
//  Copyright © 2017 Codifilia. All rights reserved.
//

import Foundation

import UIKit
import XCTest


class PermCheck : XCTestCase {
    
    public func solution(_ A : inout [Int]) -> Int {
        var set = Set<Int>()
        for e in A {
            guard e <= A.count else { return 0 }
            guard !set.contains(e) else { return 0 }
            set.insert(e)
        }
        
        for e in 1...A.count {
            if !set.contains(e) {
                return 0
            }
        }
        
        return 1
    }
    
    public func test() {
        var a = [4, 1, 3]
        XCTAssertEqual(0, solution(&a))
        
        a = [4, 1, 3, 2]
        XCTAssertEqual(1, solution(&a))
        
        a = [1]
        XCTAssertEqual(1, solution(&a))
        
        a = [2]
        XCTAssertEqual(0, solution(&a))
        
        a = [Int.max]
        XCTAssertEqual(0, solution(&a))
    }
}
