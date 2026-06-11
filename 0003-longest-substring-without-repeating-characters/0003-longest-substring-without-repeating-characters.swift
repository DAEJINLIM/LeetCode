class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let s = Array(s)
        var leg = 0

        for i in 0..<s.count {
            var word = Set<Character>()

            for j in i..<s.count {
                if word.contains(s[j]) {
                    break
                }

                word.insert(s[j])  
            }

            leg = max(leg, word.count)     
        }

        return leg
    }
}