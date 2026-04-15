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
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let p = p, let q = q, let root = root else { return nil }
        
        if (q.val < root.val && root.val < p.val) 
            || (p.val < root.val && root.val < q.val) 
            || p.val == root.val 
            || q.val == root.val {
            return root
        }
        
        if p.val < root.val && q.val < root.val {
            return lowestCommonAncestor(root.left, p, q)
        }
        
        if p.val > root.val && q.val > root.val {
            return lowestCommonAncestor(root.right, p, q)
        }
        
        return root
    }
}
