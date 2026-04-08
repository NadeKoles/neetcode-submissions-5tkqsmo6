class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var i = 0
        var j = i + 1
        var bestPrice = 0

        while i < j && j < prices.count {
            if prices[i] < prices[j] {
                let price = prices[j] - prices[i]
                bestPrice = max(price, bestPrice)
                j += 1
            } else {
                i += 1
                j = i + 1
            }
        }
        return bestPrice
    }
}
