//
//  TapeEquilibriumTests.swift
//  TapeEquilibriumTests
//
//  Created by Agustin Prats on 12/01/2017.
//  Copyright © 2017 Codifilia. All rights reserved.
//

import XCTest

class TapeEquilibriumTests: XCTestCase {
    
    public func solution(_ A : inout [Int]) -> Int {
        var acc: [Int] = []
        var accTotal = 0
        var accRev: [Int] = []
        var accRevTotal = 0
        for index in 0...A.count - 1 {
            let elem = A[index]
            accTotal += elem
            acc.append(accTotal)
            
            let indexRev = A.count - index - 1
            let elemRev = A[indexRev]
            accRevTotal += elemRev
            accRev.append(accRevTotal)
        }
        
        accRev.reverse()
        
        var min = Int.max
        for index in 0...A.count - 2 {
            let elem = acc[index]
            let elemRev = accRev[index + 1]
            let p = abs(elem - elemRev)
            if p < min {
                min = p
            }
        }
        
        return min
    }
    
    func test() {
        
        var a = [-1000, 1000]
        XCTAssertEqual(2000, solution(&a))
        
        a = [3, 1, 2, 4, 3]
        XCTAssertEqual(1, solution(&a))
    }
}
