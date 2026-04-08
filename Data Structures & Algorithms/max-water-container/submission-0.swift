class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var maxS = 0
        var left = 0
        var right = heights.count - 1

        while left < right {
            let width = right - left
            
            if heights[left] < heights[right] {
                let s = width * heights[left]
                maxS = max(s, maxS)
                left += 1
            } else {
                let s = width * heights[right]
                maxS = max(s, maxS)
                right -= 1
            }
        }

        return maxS
    }
}