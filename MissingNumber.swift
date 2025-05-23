//
//  MissingNumber.swift
//

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let sortedArray = nums.sorted()
        var initialValue = 0
        for value in sortedArray {
            if value == initialValue {
                 initialValue += 1
            } else {
                return value - 1
            }
        }
        return sortedArray.last ?? 0
    }
}
