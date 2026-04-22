class Solution {
    func countComponents(_ n: Int, _ edges: [[Int]]) -> Int {
        var graph = [[Int]](repeating: [], count: n)
        var visited = Set<Int>()
        var count = 0
        for pair in edges {
            let a = pair[0], b = pair[1]
            graph[a].append(b)
            graph[b].append(a)
        }
        
        func dfs(_ node: Int) {
            visited.insert(node)
            for neighbor in graph[node] {
                if !visited.contains(neighbor) {
                    dfs(neighbor)
                }
            }
        }
        
        for i in 0..<n {
            if !visited.contains(i) {
                dfs(i)
                count += 1
            }
        }
        
        return count
    }
}