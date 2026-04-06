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
    func hasCycle(_ head: ListNode?) -> Bool {
        var head = head
        var p1 = head
        var p2 = head

        while p2 != nil {
            p1 = p1?.next
            p2 = p2?.next?.next

            if p1 == nil || p2 == nil {
                return false
            }

            if p1 === p2 {
                return true
            }
        }
        return false
    }
}
