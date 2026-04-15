/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        var q: [TreeNode] = [root]
        var ans: [[Int]] = []

        while !q.isEmpty {
            let levelSize = q.count
            var level = [Int]()

            for _ in 0..<levelSize {
                let node = q.removeFirst()
                level.append(node.val)
                
                if let left = node.left {
                    q.append(left)
                }
                
                if let right = node.right {
                    q.append(right)
                }
            }
            ans.append(level)
        }
        return ans
    }
}
