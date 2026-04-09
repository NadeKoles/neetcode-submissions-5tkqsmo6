class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        let chars = Array(s)
        var count = [Character: Int]()
        var left = 0, maxF = 0, res = 0
        
        for right in 0..<chars.count {
            count[chars[right], default: 0] += 1
            maxF = max(count[chars[right]]!, maxF)
            
            while (right - left + 1) - maxF > k {
                count[chars[left], default: 0] -= 1
                left += 1
            }
            res = max(res, right - left + 1)
        }
        return res
    }
}