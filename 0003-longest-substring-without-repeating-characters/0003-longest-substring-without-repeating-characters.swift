class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let s = Array(s)

        var set = Set<Character>()
        var l = 0
        var result = 0

        for r in 0..<s.count {
            while set.contains(s[r]) {
                set.remove(s[l])
                l += 1
            }

            set.insert(s[r])
            result = max(result, r - l + 1)
        }

        return result
    }
}