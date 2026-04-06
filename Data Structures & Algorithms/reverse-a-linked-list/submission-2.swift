/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var newHead: ListNode? = nil
        var head = head
       
        while head != nil {
            var temp = ListNode(head!.val)
            temp.next = newHead
            newHead = temp
            
            head = head?.next
        }

        return newHead
    }
}
