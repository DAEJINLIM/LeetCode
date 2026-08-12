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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var node1 = list1
        var node2 = list2

        let start = ListNode(0)
        var current = start

        while node1 != nil && node2 != nil {
            if node1!.val <= node2!.val {
                current.next = node1
                node1 = node1?.next
            } else {
                current.next = node2
                node2 = node2?.next
            }

            current = current.next!
        }

        if node1 != nil {
            current.next = node1
        } else {
            current.next = node2
        }

        return start.next
    }
}