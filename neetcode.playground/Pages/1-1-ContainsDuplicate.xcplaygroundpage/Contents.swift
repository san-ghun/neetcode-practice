//: [Previous](@previous)

import Foundation
import XCTest

// NeetCode - Blind 75
// 1. Arrays&Hashing (1 / 8)

// MARK: - Practice
/// Given an integer array `nums`, return `true` if any value appears **at least twice** in the array, and return `false` if every element is distinct.
func containsDuplicate(_ nums: [Int]) -> Bool {
    // temp 1
    //return Set(nums).count != nums.count
    
    // temp 2
    var hashSet = Set<Int>()
    
    for num in nums {
        if hashSet.contains(num) {
            return true
        }
        hashSet.insert(num)
    }
    return false
}

// MARK: - Test

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(containsDuplicate([1,2,3,1]), true)
        XCTAssertEqual(containsDuplicate([1,2,3,4]), false)
        XCTAssertEqual(containsDuplicate([1,1,1,3,3,4,3,2,4,2]), true)
    }
}

SolutionTest.defaultTestSuite.run()

// MARK: - Solution

//: [Next](@next)
