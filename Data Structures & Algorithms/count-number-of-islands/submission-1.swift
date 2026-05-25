class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid
        var count = 0

        for row in 0..<grid.count {
            for col in 0..<grid[0].count {
                if grid[row][col] == "1" {
                    count += 1
                    dfs(row, col)
                }
            }
        }

        func dfs(_ row: Int, _ col: Int) {
            guard row >= 0, row < grid.count, 
                col >= 0, col < grid[0].count, 
                grid[row][col] == "1" else { return }

            grid[row][col] = "0"
            
            dfs(row, col+1)
            dfs(row, col-1)
            dfs(row+1, col)
            dfs(row-1, col)
        }

        return count
    }
}
