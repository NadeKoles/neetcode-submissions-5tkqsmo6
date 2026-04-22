class Solution {
    func pacificAtlantic(_ heights: [[Int]]) -> [[Int]] {
        var pacific = [(Int, Int)]()
        var atlantic = [(Int, Int)]()
        let cols = heights[0].count
        let rows = heights.count
        
        for col in 0..<cols {
            pacific.append((0, col))
            atlantic.append((rows - 1, col))
        }
        
        for row in 0..<rows {
            pacific.append((row, 0))
            atlantic.append((row, cols - 1))
        }
        
        
        func bfs(_ queue: [(Int, Int)], _ heights: [[Int]]) -> Set<[Int]> {
            var queue = queue
            var visited = Set<[Int]>()
            
            while !queue.isEmpty {
                let cur = queue.removeFirst()
                visited.insert([cur.0, cur.1])
                
                let directions = [(0,1),(0,-1),(1,0),(-1,0)]
                
                for dir in directions {
                    let newRow = cur.0 + dir.0
                    let newCol = cur.1 + dir.1
                    let neighbor = (newRow, newCol)
                    
                    if newRow >= 0 && newRow < rows
                        && newCol >= 0 && newCol < cols
                        && !visited.contains([newRow, newCol])
                        && heights[cur.0][cur.1] <= heights[newRow][newCol] {
                        queue.append(neighbor)
                    }
                }
            }
            return visited
        }
        let pacificSet = bfs(pacific, heights)
        let atlanticSet = bfs(atlantic, heights)
        
        return pacificSet.intersection(atlanticSet).map { $0 }
    }
}