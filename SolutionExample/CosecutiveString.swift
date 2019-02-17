//
//  CosecutiveString.swift
//  CodeWarPractice
//
//  Created by Veck  Hsiao on 2019/2/17.
//  Copyright © 2019 Sanity. All rights reserved.
//

import Foundation

public class ConsecutiveString {
  static func longestConsec(_ strarr: [String], _ k: Int) -> String {

    if(strarr.count == 0) { return "" }

    var longest = (index: 0, length: 0)

    for (index, str) in strarr.enumerated() {
      if(str.characters.count > longest.length){
        longest.index = index
        longest.length = str.characters.count
      }
    }

    var result: String = ""
    for i in longest.index..<longest.index+k {
      if(i >= strarr.count){
        break
      }

      result = "\(result)\(strarr[i])"


    }

    return result
  }
}
