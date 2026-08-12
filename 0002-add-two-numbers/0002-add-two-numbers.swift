/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var node1 = l1
        var node2 = l2

        var carry = 0
        let start = ListNode(0)

        var current = start

        while node1 != nil || node2 != nil || carry != 0 {
            var sum = carry
            
            if let a = node1?.val {
                sum += a
            }
            if let b = node2?.val {
                sum += b
            }
            
            carry = sum / 10
            
            current.next = ListNode(sum % 10)
            current = current.next!

            node1 = node1?.next
            node2 = node2?.next
            
        }

        return start.next
    }
}
