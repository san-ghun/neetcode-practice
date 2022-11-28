//: [Previous](@previous)

import Foundation
import XCTest

// NeetCode - Blind 75
// 1. Arrays&Hashing (3 / 8)

// MARK: - Practice
/// Given an array of integers `nums` and an integer `target`, return indices of the two numbers such that they add up to `target`.
///
/// You may assume that each input would have **exactly one solution**, and you may not use the same element twice.
///
/// You can return the answer in any order.
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    // temp 1
    /*
    var a: Int = 0
    var b: Int = 1
    
    for (i, n) in nums.enumerated() {
        for (j, m) in nums[i+1 ..< nums.endIndex].enumerated() {
            if n + m == target {
                a = i
                b = j+i+1
                break
            }
        }
    }
    
    return [a, b]
    */
    
    // temp 2
    var prevMap = [Int: Int]()
    
    for (i, n) in nums.enumerated() {
        var diff = target - n
        if prevMap.keys.contains(diff) {
            return [prevMap[diff, default: 0], i]
        }
        prevMap[n] = i
    }
    
    return [0,1]
}

print("Temp Test \(twoSum([1,2,3,4], 6))")

// MARK: - Test

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(twoSum([2,7,11,15], 9), [0,1])
        XCTAssertEqual(twoSum([3,2,4], 6), [1,2])
        XCTAssertEqual(twoSum([3,3], 6), [0,1])
    }
}

SolutionTest.defaultTestSuite.run()

// MARK: - Solution

//: [Next](@next)
