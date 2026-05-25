class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let m = matrix.count, n = matrix[0].count
        var low = 0, high = m*n-1
        
        while low <= high {
            let mid = (high + low) / 2
            let val = matrix[mid/n][mid%n]
            
            if val > target {
                high = mid - 1
            } else if val < target {
                low = mid + 1
            } else {
                return true
            }
        }
        return false
    }
}
