class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        var dp = Array(repeating: amount + 1, count: amount + 1)
        dp[0] = 0
        
        for i in 0...amount {
            for c in coins where (i - c) >= 0 {
                dp[i] = min(dp[i], dp[i - c] + 1)
            }
        }

        if dp[amount] == amount + 1 {
            return -1
        }
        return dp[amount]
    }
}
