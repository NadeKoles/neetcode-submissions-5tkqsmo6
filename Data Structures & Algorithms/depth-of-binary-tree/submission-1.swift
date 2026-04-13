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
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var maxD = 0
        var stack: [(TreeNode, Int)] = [(root, 1)]

        while !stack.isEmpty {
            let (node, depth) = stack.removeLast()
            maxD = max(maxD, depth)

            if let left = node.left {
                stack.append((left, depth + 1))
            }
            if let right = node.right {
                stack.append((right, depth + 1))
            }
        }
        return maxD
    }
}
