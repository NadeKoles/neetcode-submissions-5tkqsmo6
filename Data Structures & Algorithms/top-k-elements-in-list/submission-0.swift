class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var count = [Int: Int]()
        var ans = [Int]()

        for num in nums {
            count[num, default: 0] += 1
        }
        
        let sortedCount = count.sorted { $0.value > $1.value }
        ans.append(contentsOf: sortedCount.prefix(k).map{ $0.key })
        
        return ans
    }
}