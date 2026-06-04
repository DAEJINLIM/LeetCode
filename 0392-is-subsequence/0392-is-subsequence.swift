class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let s = Array(s)
        let t = Array(t)

        var i = 0
        var j = 0

        while i < s.count && j < t.count {
            if s[i] == t[j] {
                i += 1
            }
            j += 1
        }

        return i == s.count
    }
}