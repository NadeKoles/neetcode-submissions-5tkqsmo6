class Solution {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        var intervals = intervals
        
        if intervals.count >= 2 {
            intervals.sort(by: { $0.last! <= $1.last!})
        } else {
            return 0
        }
        
        var end = intervals[0][1]
        var count = 0
        
        for i in 1..<intervals.count {
            if intervals[i][0] >= end {
                end = intervals[i][1]
            } else {
                count += 1
            }
        }

        return count
    }
}
