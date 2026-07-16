  class Solution {
   func isIsomorphic(_ s: String, _ t: String) -> Bool {
       func pattern(_ str: String) -> [Int] {
           var map = [Character: Int]()
           var result = [Int]()
           var counter = 0
           
           for char in str {
               if map[char] == nil {
                   map[char] = counter
                   counter += 1
               }
               result.append(map[char]!)
           }
           return result
       }
       
       return pattern(s) == pattern(t)
   }
}