//
//  Created by Muneesh Kumar on 21/02/25.
//

import Foundation

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var finalArray: [Int] = Array(repeating: 1, count: nums.count)
        var suffix = 1
        for index in 1..<nums.count {
           finalArray[index] = finalArray[index - 1] * nums[index - 1]
        }
        for index in (0..<nums.count).reversed() {
            finalArray[index] *= suffix
            suffix *= nums[index]
        }
        return finalArray
    }
}
