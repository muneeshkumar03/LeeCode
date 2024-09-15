//
//  ReverseString.swift
//  CombineDemo
//
//  Created by Muneesh Kumar on 15/09/24.
//


class Solution {
    // two pointer problem
    func reverseString(_ s: inout [Character]) {
        var startIndex = 0
        var endIndex = s.count - 1
        while (startIndex <= endIndex) {
            let firstElement = s[startIndex]
            let endElement = s[endIndex]
            s[endIndex] = firstElement
            s[startIndex] = endElement
            startIndex += 1
            endIndex -= 1
        }
    }
}
