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
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {

        let a = ListNode(0)
        let b = ListNode(0)
        var current = head
        var under = a
        var over = b

        while let node = current {

            if node.val < x {
                under.next = node
                under = node
            } else {
                over.next = node
                over = node
            }

            current = node.next
        }

        over.next = nil
        under.next = b.next

        return a.next
    }
}