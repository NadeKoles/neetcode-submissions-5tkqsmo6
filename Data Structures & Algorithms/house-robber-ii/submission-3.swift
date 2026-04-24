class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }

        if nums.count == 1 {
            return nums[0]
        }      

        let first = Array(nums.dropFirst())
        let last = Array(nums.dropLast())
        
        func rober(_ nums: [Int]) -> Int {
            var prev = 0
            var cur = 0
            for n in nums {
                let temp = cur
                cur = max(cur, prev + n)
                prev = temp
            }
            
            return cur
        }
        return max(rober(first), rober(last))
    }
}