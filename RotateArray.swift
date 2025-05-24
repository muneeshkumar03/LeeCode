//
// 189. Rotate Array
//

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var counter = k

        if nums.count == 0 {
            return
        }
        if counter > nums.count {
           counter = counter % nums.count
        }
        reverse(0, nums.count-1-counter, &nums)
        reverse(nums.count - counter, nums.count-1, &nums)
        reverse(0, nums.count-1, &nums)
    }

    func reverse(_ start: Int, _ end: Int, _ nums: inout [Int]) {
        var startPointer = start
        var endPointer = end

        while startPointer < endPointer {
            let temp = nums[startPointer]
            nums[startPointer] = nums[endPointer]
            nums[endPointer] = temp
            startPointer += 1
            endPointer -= 1
        }
    }
}
