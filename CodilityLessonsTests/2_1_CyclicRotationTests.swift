//
//  CyclicRotationTests.swift
//  CyclicRotationTests
//
//  Created by Agustin Prats on 10/01/2017.
//  Copyright © 2017 Codifilia. All rights reserved.
//

import XCTest

class CyclicRotationTests: XCTestCase {
    
    private func solution(_ A : inout [Int], _ K : Int) -> [Int]
    {
        if K > 0 {
            for _ in 1...K {
                shift(&A)
            }
        }
        return A
    }
    
    private func shift(_ A : inout [Int])
    {
        if !A.isEmpty {
            
            let last = A.removeLast()
            A.insert(last, at: 0)
        }
    }
    
    
    func test() {
        
        
        var a = [3, 8, 9, 7, 6]
        XCTAssertEqual([9, 7, 6, 3, 8], solution(&a, 3))
        
        a = []
        XCTAssertEqual([], solution(&a, 3))
        
        a = [3, 8, 9, 7, 6]
        XCTAssertEqual([3, 8, 9, 7, 6], solution(&a, 0))
        
        a = [3, 8, 9, 7, 6]
        XCTAssertEqual([3, 8, 9, 7, 6], solution(&a, 5))
        
        a = [3, 8, 9, 7, 6]
        XCTAssertEqual([6, 3, 8, 9, 7], solution(&a, 1))
        
        a = [6]
        XCTAssertEqual([6], solution(&a, 3))
    }
    
}
