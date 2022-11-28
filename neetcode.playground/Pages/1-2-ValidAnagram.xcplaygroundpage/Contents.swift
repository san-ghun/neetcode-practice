//: [Previous](@previous)

import Foundation
import XCTest

// NeetCode - Blind 75
// 1. Arrays&Hashing (2 / 8)

// MARK: - Practice
/// Given two strings `s` and `t`, return `true` if `t` is an anagram of `s`, and `false` otherwise.
///
/// An **Anagram** is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
func isAnagram(_ s: String, _ t: String) -> Bool {
    // temp 1
    //s.sorted() == t.sorted()
    
    // temp 2
    guard s.count == t.count else { return false }
    
    var countS = [Character: Int]()
    var countT = [Character: Int]()
    
    for (s1, t1) in zip(s, t) {
        countS[s1, default: 0] += 1
        countT[t1, default: 0] += 1
    }
    
    for c in countS.keys {
        if countS[c] != countT[c, default: 0] {
            return false
        }
    }
    
    return true
}

// MARK: - Test

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(isAnagram("anagram", "nagaram"), true)
        XCTAssertEqual(isAnagram("rat", "cat"), false)
    }
}

SolutionTest.defaultTestSuite.run()

// MARK: - Solution

//: [Next](@next)
