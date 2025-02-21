//
//  ContainDuplicate.swift
//  ContainDuplicate
//
//  Created by Muneesh Kumar on 21/02/25.
//

import Foundation

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict = [Int: Int]()
        for num in nums {
            if dict.keys.contains(num) {
                return false
            }
            dict[num] = num
        }
        return true
    }
}
