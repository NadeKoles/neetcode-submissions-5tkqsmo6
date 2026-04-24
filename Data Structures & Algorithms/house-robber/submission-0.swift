class Solution {
    func rob(_ nums: [Int]) -> Int {
        let n = nums.count
        
        if n == 1 {
            return nums[0]
        }
        
        if n == 2 {
            return max(nums[0],nums[1])
        }
        
        var db = Array(repeating: 0, count: n)
        db[0] = nums[0]
        db[1] = max(nums[0], nums[1])
        for i in 2...(n-1) {
            db[i] = max(db[i-1], db[i-2] + nums[i])
        }
        
        return db[n-1]
    }
}