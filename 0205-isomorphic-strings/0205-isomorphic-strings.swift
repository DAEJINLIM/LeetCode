class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        if s == t { return true }

        var dicS = [Character: Character]()
        var dicT = [Character: Character]()

        for (a, b) in zip(s, t) {
            if let value1 = dicS[a] {
                if value1 != b {
                    return false
                }
            } else {
                dicS[a] = b
            }

            if let value2 = dicT[b] {
                if value2 != a {
                    return false
                }
            } else {
                dicT[b] = a
            }
        }
        
        return String(s.map { dicS[$0]! }) == t
    }
}
