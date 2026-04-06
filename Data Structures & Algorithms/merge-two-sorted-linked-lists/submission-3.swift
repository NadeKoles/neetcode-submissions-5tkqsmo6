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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var p1 = list1
        var p2 = list2

        var head: ListNode? = nil
        var tail: ListNode? = nil

        if let val1 = p1?.val, let val2 = p2?.val {
            if val1 < val2 {
                head = list1
                tail = head
                p1 = p1?.next
            } else {
                head = list2
                tail = head
                p2 = p2?.next
            }
        } else {
            return p1 ?? p2
        }

        while p1 != nil || p2 != nil {
            if let val1 = p1?.val, let val2 = p2?.val {
                if val1 < val2 {
                    tail?.next = p1
                    tail = p1
                    p1 = p1?.next
                } else {
                    tail?.next = p2
                    tail = p2
                    p2 = p2?.next
                }
                continue
            }

            if p1 == nil && p2 != nil {
                tail?.next = p2
                break
            }

            if p2 == nil && p1 != nil {
                tail?.next = p1
                break
            }
        }

    return head    
    }
}