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
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        guard !preorder.isEmpty else { return nil }
        
        let node = TreeNode(preorder[0])
        let mid = inorder.firstIndex(of: preorder[0])!
        
        node.left = buildTree(Array(preorder[1..<mid+1]), Array(inorder[0..<mid]))
        node.right = buildTree(Array(preorder[mid+1..<preorder.count]), Array(inorder[mid+1..<inorder.count]))
        
        return node
    }
}
