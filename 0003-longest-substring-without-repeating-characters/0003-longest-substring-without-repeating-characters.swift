class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let s = Array(s)
        var word = Set<Character>()
        var l = 0
        var leg = 0

        for r in 0..<s.count {
            while word.contains(s[r]) {
                word.remove(s[l])
                l += 1
            }
            
            word.insert(s[r])
            leg = max(leg, r - l + 1)
        }

        return leg
    }
}