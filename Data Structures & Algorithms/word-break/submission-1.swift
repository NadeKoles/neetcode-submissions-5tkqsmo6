class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        var dp = [Bool](repeating: false, count: s.count + 1)
        dp[0] = true

        for i in 1...s.count {
            for j in 0..<i {
                let start = s.index(s.startIndex, offsetBy: j)
                let end = s.index(s.startIndex, offsetBy: i)
                let word = String(s[start..<end])
                
                if wordDict.contains(word) && dp[j] == true {
                    dp[i] = true
                    break
                }
            }
        }
        return dp[s.count]
    }
}