class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let p = pattern.map { String($0) }
        let words = s.split(separator: " ").map { String($0) }

        if p.count != words.count { return false }

        var dicS = [String: String]()
        var dicT = [String: String]()

        for (a, b) in zip(p, words) {
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
        
        return true
    }
}