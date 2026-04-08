class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var bigMax = 0
        let vc = Set(nums)
        
        for num in nums {
            if !vc.contains(num - 1) {
                var curMax = 0
                var temp = num
                
                while vc.contains(temp) {
                    curMax += 1
                    temp += 1
                }
                
                bigMax = max(curMax, bigMax)
                
            } else {
                continue
            }
        }
        
        return bigMax
    }
}