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
    func reorderList(_ head: ListNode?) {
        var fast = head
        var slow = head

        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        let mid = slow
        
        var prev: ListNode? = nil
        var cur = mid?.next
        mid?.next = nil

        while cur != nil {
            let next = cur?.next
            cur?.next = prev
            prev = cur
            cur = next
        }

        var first = head
        var second = prev

        while second != nil && first != nil {
            let firstNext = first?.next
            let secondNext = second?.next

            first?.next = second
            second?.next = firstNext

            first = firstNext
            second = secondNext      
        }

    }
}
