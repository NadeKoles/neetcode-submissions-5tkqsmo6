class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = Array(s)
        var seen = Set<Character>()
        var left = 0
        var maxCount = 0
        
        for right in 0..<chars.count {
            while seen.contains(chars[right]) {
                seen.remove(chars[left])
                left += 1
            }
            seen.insert(chars[right])
            maxCount = max(maxCount, right - left + 1)
        }
        
        return maxCount
    }
}