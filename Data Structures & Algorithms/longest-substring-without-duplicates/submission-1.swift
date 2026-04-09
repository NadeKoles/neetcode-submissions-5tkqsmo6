class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let s = Array(s)
        var p1 = 0, p2 = 0
        var seen = Set<Character>()
        var maxCount = 0
        var count = 0
        
        while p2 < s.count && p1 <= p2 {
            if !seen.contains(s[p2]) {
                seen.insert(s[p2])
                count += 1
                maxCount = max(count, maxCount)
                p2 += 1
            } else {
                seen.remove(s[p1])
                p1 += 1
                count -= 1
            }
        }
           
        return maxCount
    }
}