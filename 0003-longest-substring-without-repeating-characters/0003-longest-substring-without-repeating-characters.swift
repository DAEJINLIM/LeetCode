class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s == "" { return 0 }
        if s == " " { return 1 }

        let s = Array(s)
        var word = Set<Character>()
        var l = 0
        var leg = 0

        while l != s.count {
            for i in l..<s.count {
                let count = word.count
                word.insert(s[i])
                if count >= word.count {
                    l += 1
                    leg = max(leg, count)
                    word = []
                    break
                }
            }
        }

        return leg
    }
}