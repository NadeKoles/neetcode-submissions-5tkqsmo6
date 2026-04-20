/*
Definition for a Node.
class Node {
    var val: Int
    var neighbors: [Node?]
    init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
}
*/

class Solution {
    func cloneGraph(_ node: Node?) -> Node? {
        guard let node = node else { return nil }
        var visited = [Int: Node]()

        func dfs(_ node: Node) -> Node {
            if let clone = visited[node.val] {
                return clone
            }
            
            let clone = Node(node.val)
            visited[node.val] = clone
            clone.neighbors = node.neighbors.map { dfs($0!) }
            
            return clone
        }
        return dfs(node)
    }
}