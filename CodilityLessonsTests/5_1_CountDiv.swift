//
//  5_1_CountDiv.swift
//  CodilityLessons
//
//  Created by Agustin Prats on 15/01/2017.
//  Copyright © 2017 Codifilia. All rights reserved.
//

import Foundation

import UIKit
import XCTest


class CountDiv : XCTestCase {
    
    public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
        return B / K - (A / K) + (A % K == 0 ? 1 : 0)
    }
    
    func naiveSolution(_ A : Int, _ B : Int, _ K : Int) -> Int {
        return
            (min(A, B)...max(A, B))
                .lazy
                .filter { $0 % K == 0 }
                .map { _ in 1 }
                .reduce(0) { $0 + $1 }
    }
    
    private func checkBothSolutions(_ A : Int, _ B : Int, _ K : Int) {
        XCTAssertEqual(naiveSolution(A, B, K), solution(A, B, K), "A=\(A) B=\(B) K=\(K)")
    }
    
    public func test() {
        checkBothSolutions(0, 6, 2)
        checkBothSolutions(3, 6, 2)
        checkBothSolutions(0, 7, 2)
        checkBothSolutions(0, 7, 2)
        checkBothSolutions(6, 12, 2)
        checkBothSolutions(11, 345, 17)
        checkBothSolutions(6, 11, 2)
        checkBothSolutions(6, 11, 3)
        checkBothSolutions(6, 11, 4)
        checkBothSolutions(6, 6, 2)
        checkBothSolutions(0, 11, 2)
        checkBothSolutions(0, 0, 2)
    }
}
