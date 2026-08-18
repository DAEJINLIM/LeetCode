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
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        let dummy = ListNode(0)
        dummy.next = head
        
        var prev: ListNode? = dummy
        
        for _ in 1..<left {
            prev = prev?.next
        }
        
        let start = prev?.next
        
        for _ in 0..<(right - left) {
            let next = start?.next

            start?.next = next?.next
            next?.next = prev?.next
            prev?.next = next
        }
        
        return dummy.next
    }
}
