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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        dummy.next = head

        var prev: ListNode? = dummy
        var current = dummy.next

        while current?.next != nil {
            if current?.val == current?.next?.val {   
                while current?.val == current?.next?.val {
                    current = current?.next
                }
                prev?.next = current?.next
                current = prev?.next
            } else {
                prev = current
                current = current?.next
            }
        }   

        return dummy.next
    }
}