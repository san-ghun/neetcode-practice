//: [Previous](@previous)

import Foundation
import XCTest

// NeetCode - Blind 75
// 2. Two Pointers (1 / 3)

// MARK: - Practice
/// Description
func isPalindrome(_ s: String) -> Bool {
    // temp 1
    var charArray: [Character] = []
    
    s.forEach { c in
        if c.isLetter || c.isNumber {
            charArray.append(contentsOf: c.lowercased())
        }
    }
    
    if charArray.isEmpty && (charArray.count == 1) {
        return true
    }
    
    for i in Array(0..<(charArray.count/2)) {
        if charArray[i] != charArray[charArray.count - 1 - i] {
            return false
        }
    }
    
    return true
    
    // temp 2
    /*
    var s = Array(s)
    var i = 0
    var j = s.count - 1
    var isalnum: (Character)->Bool = { c in
        c.isLetter || c.isNumber
    }
    
    while (i < j) {
        while ( !isalnum(s[i]) && i < j ) {
            i += 1
        }
        while ( !isalnum(s[j]) && i < j ) {
            j -= 1
        }
        if ( s[i].lowercased() != s[j].lowercased() ) {
            return false
        }
        i += 1
        j -= 1
    }
    
    return true
     */
}

// MARK: - Test

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(isPalindrome("A man, a plan, a canal: Panama"), true)
        XCTAssertEqual(isPalindrome("race a car"), false)
        XCTAssertEqual(isPalindrome(" "), true)
        XCTAssertEqual(isPalindrome("0P"), false)
    }
}

SolutionTest.defaultTestSuite.run()

// MARK: - Solution

//: [Next](@next)
