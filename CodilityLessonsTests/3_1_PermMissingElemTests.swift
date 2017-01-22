//
//  PermMissingElemTests.swift
//  PermMissingElemTests
//
//  Created by Agustin Prats on 12/01/2017.
//  Copyright © 2017 Codifilia. All rights reserved.
//

import XCTest

class PermMissingElemTests: XCTestCase {
    
    public func solution(_ A : inout [Int]) -> Int {
        var index = 0
        while index < A.count {
            let elem = A[index]
            if index == elem - 1 || elem - 1 >= A.count {
                index += 1
            }
            else {
                let temp = A[elem - 1]
                A[elem - 1] = elem
                A[index] = temp
            }
        }
        
        for (index, elem) in A.enumerated() {
            if elem == A.count + 1 {
                return index + 1
            }
        }
        
        return A.count + 1
    }
    
    func test() {
        var a = [5, 3, 1, 4]
        XCTAssertEqual(2, solution(&a))
        
        a = [2, 3, 5, 4]
        XCTAssertEqual(1, solution(&a))
        
        a = [2, 3, 1, 5]
        XCTAssertEqual(4, solution(&a))
        
        a = [2, 3, 1, 4]
        XCTAssertEqual(5, solution(&a))
        
        a = [1, 2, 3, 4]
        XCTAssertEqual(5, solution(&a))
        
        a = [1]
        XCTAssertEqual(2, solution(&a))
        
        a = [2]
        XCTAssertEqual(1, solution(&a))
    }
}
