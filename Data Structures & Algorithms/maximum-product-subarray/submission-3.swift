class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return nums[0]
        }

        var maxEndingHere = nums[0]
        var minEndingHere = nums[0]
        var result = nums[0]

        for i in 1..<nums.count {
            let prevMax = maxEndingHere
            let prevMin = minEndingHere
            maxEndingHere = max(nums[i], prevMax * nums[i], prevMin * nums[i])
            minEndingHere = min(nums[i], prevMax * nums[i], prevMin * nums[i])
            result = max(result, maxEndingHere)
        }
        return result
    }
}
