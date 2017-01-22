//
//  BinaryGapTests.swift
//  BinaryGapTests
//
//  Created by Agustin Prats on 09/01/2017.
//  Copyright © 2017 Codifilia. All rights reserved.
//

import XCTest

class BinaryGapTests: XCTestCase {
    
    func test() {
        
        XCTAssertEqual(0, solution(4))
        XCTAssertEqual(3, solution(123456))
        XCTAssertEqual(0, solution(16))
        XCTAssertEqual(0, solution(1024))
        XCTAssertEqual(2, solution(51712))
        XCTAssertEqual(1, solution(20))
        XCTAssertEqual(0, solution(6))
        XCTAssertEqual(2, solution(328))
        XCTAssertEqual(5, solution(1041))
        XCTAssertEqual(1, solution(5))
    }
    
    private func solution(_ n: Int) -> Int {
        var maxCount = 0
        var count = 0
        var q = n
        var startCounting = false
        
        while q > 0 {
            if q % 2 == 0 {
                if startCounting {
                    count += 1
                }
            }
            else {
                maxCount = max(count, maxCount)
                count = 0
                startCounting = true
            }
            q /= 2
        }
        
        return maxCount
    }
}
