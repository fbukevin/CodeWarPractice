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
    print(strarr, k)
    if(strarr.count == 0 || k > strarr.count || k <= 0) { return "" }

    var longest = (word: "", length: 0)

    for (index, _) in strarr.enumerated() {
      if(index+k > strarr.count){ break }

      var combine = ""
      for i in 0..<k {
        combine = "\(combine)\(strarr[index+i])"
      }


      if(combine.characters.count > longest.length){
        longest.word = combine
        longest.length = combine.characters.count
      }
    }

    return longest.word
  }
}
