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
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var bigMax = 0
        
        func dfs(_ node: TreeNode?) -> Int {
            guard let node = node else { return 0 }
            
            let left = dfs(node.left)
            let right = dfs(node.right)
            let curMax = left + right
            bigMax = max(curMax, bigMax)
            
            return max(left, right) + 1
        }
        
        dfs(root)
        return bigMax
    }
}