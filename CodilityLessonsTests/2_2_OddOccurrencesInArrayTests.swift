//
//  OddOccurrencesInArrayTests.swift
//  OddOccurrencesInArrayTests
//
//  Created by Agustin Prats on 11/01/2017.
//  Copyright © 2017 Codifilia. All rights reserved.
//

import XCTest

class OddOccurrencesInArrayTests: XCTestCase {
    
    public func solution(_ A : inout [Int]) -> Int {
        var count: [Int : Int] = [:]
        
        for elem in A {
            count[elem] = (count[elem] ?? 0) + 1
        }
        
        let oddRepsElem = count.first(where: {_, reps in reps % 2 != 0 })?.key
        
        return oddRepsElem ?? -1
    }
    
    func test() {
        var a = [9, 3, 9, 3, 9, 7, 9]
        XCTAssertEqual(7, solution(&a))
        
        a = [9]
        XCTAssertEqual(9, solution(&a))
        
        a = [9, 3, 9, 3, 9, 7, 9, 7, 7]
        XCTAssertEqual(7, solution(&a))
    }
    
}
