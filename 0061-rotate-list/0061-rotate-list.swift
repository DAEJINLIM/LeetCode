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
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {

        var current = head
        var length = 1

        while current?.next != nil {
            current = current?.next
            length += 1
        }

        current?.next = head

        for _ in 0..<(length - (k % length)) {
            current = current?.next
        }
        
        let newHead = current?.next
        current?.next = nil

        return newHead
    }
}