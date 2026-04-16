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
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var result = [Int]()
        inorder(root, &result)

        return result[k - 1]
    }

    func inorder(_ node: TreeNode?, _ result: inout [Int]) {
        guard let node = node else { return }
        
        inorder(node.left, &result)
        result.append(node.val)
        inorder(node.right, &result)
    }
}
