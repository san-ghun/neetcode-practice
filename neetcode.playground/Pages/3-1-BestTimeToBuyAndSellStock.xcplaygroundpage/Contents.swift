//: [Previous](@previous)

import Foundation
import XCTest

// NeetCode - Blind 75
// 3. Sliding Window (1 / 3)

// MARK: - Practice
/// Description
func maxProfit(_ prices: [Int]) -> Int {
    // temp 1
    var minIdx: Int = 0
    var result: Int = 0
    
    for i in Array(1..<prices.count) {
        minIdx = prices[minIdx] > prices[i] ? i : minIdx
        result = max(result, prices[i] - prices[minIdx])
    }
    
    return result
}

// MARK: - Test

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(maxProfit([7,1,5,3,6,4]), 5)
        XCTAssertEqual(maxProfit([7,6,4,3,1]), 0)
    }
}

SolutionTest.defaultTestSuite.run()

// MARK: - Solution

//: [Next](@next)
