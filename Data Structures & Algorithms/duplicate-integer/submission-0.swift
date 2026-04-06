class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var seen = Set<Int>()

        for num in nums {
            seen.insert(num)
        }

        return seen.count != nums.count 
    }
}
