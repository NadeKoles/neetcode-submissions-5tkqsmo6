class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var graph = [[Int]](repeating: [], count: numCourses)
        for pair in prerequisites {
            let a = pair[0], b = pair[1]
            graph[b].append(a)
        }
        
        enum State { case white, gray, black }
        var state = [State](repeating: .white, count: numCourses)

        func dfs(_ node: Int) -> Bool {
            if state[node] == .gray {
                return false
            } else if state[node] == .black {
                return true
            } else {
                state[node] = .gray
                for next in graph[node] {
                    if !dfs(next) { return false }
                }
                state[node] = .black
                return true
            }
        }
        
        for i in 0..<numCourses {
            if !dfs(i) { return false }
        }
        
        return true
    }
}