//
//  SolutionExample.swift
//  SolutionExample
//
//  Created by Veck  Hsiao on 2019/2/17.
//  Copyright © 2019 Sanity. All rights reserved.
//

import XCTest
//@testable import CodeWarPractice

class ConsecutiveStringTest: XCTestCase {

  static var allTests = [
    ("longestConsec", testExample),
    ]

  func testing(_ strarr: [String], _ k: Int, _ expected: String) {
    XCTAssertEqual(ConsecutiveString.longestConsec(strarr, k), expected)
  }

  func testExample() {
    testing(["zone", "abigail", "theta", "form", "libe", "zas"], 2, "abigailtheta")
    testing(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1,
            "oocccffuucccjjjkkkjyyyeehh")
        testing([], 3, "")
        testing(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2,
                "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck")
    testing(["zone", "theta", "form", "libe", "zas", "abigail"], 2, "abigail")
  }
}
