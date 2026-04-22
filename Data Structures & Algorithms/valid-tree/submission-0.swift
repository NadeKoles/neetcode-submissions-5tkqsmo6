class Solution {
    func validTree(_ n: Int, _ edges: [[Int]]) -> Bool {
        var graph = [[Int]](repeating: [], count: n)
        var visited = Set<Int>()
        
        if edges.count != n-1 {
            return false
        }
        
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
        
        dfs(0)
        
        return visited.count == n
    }
}