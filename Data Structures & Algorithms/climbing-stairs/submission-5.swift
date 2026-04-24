class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 2 {
            return n
        }
        
        var prev = 1, cur = 2

        for _ in 3...n {
            let temp = cur
            cur = prev + cur
            prev = temp
        }
        
        return cur
    }
}
