class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid
        var count = 0

        func dfs(_ r: Int, _ c: Int) {
            
            if r < 0 || r >= grid.count || c < 0 || c >= grid[0].count || grid[r][c] == "0" {
                return
            }

            grid[r][c] = "0"
            dfs(r+1, c)
            dfs(r-1, c)
            dfs(r, c+1)
            dfs(r, c-1)
        }

        for r in 0..<grid.count {
            for c in 0..<grid[0].count {
                if grid[r][c] == "1" {
                    count += 1
                    dfs(r, c)
                }
            }
        }
        return count
    }
}




