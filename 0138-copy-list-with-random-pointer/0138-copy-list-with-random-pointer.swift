/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var next: Node?
 *     public var random: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *    	   self.random = nil
 *     }
 * }
 */

class Solution {
    func copyRandomList(_ head: Node?) -> Node? {
        var map = [Node: Node]()
        var current = head
        
        // 1. 모든 노드 복사
        while let node = current {
            map[node] = Node(node.val)
            current = node.next
        }
        
        // 2. next, random 연결
        current = head
        

        

        while let node = current {

            if let next = node.next {

                map[node]!.next = map[next]

            }

            

            if let random = node.random {

                map[node]!.random = map[random]

            }

            

            current = node.next

        }

        

        if let head = head {

            return map[head]

        }

        

        return nil
    }
}