class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let p = pattern
        let words = s.split(separator: " ").map { String($0) }

        if p.count != words.count { return false }

        var dicP = [Character: String]()
        var dicWords = [String: Character]()

        for (a, b) in zip(p, words) {
            if let value1 = dicP[a] {
                if value1 != b {
                    return false
                }
            } else {
                dicP[a] = b
            }

            if let value2 = dicWords[b] {
                if value2 != a {
                    return false
                }
            } else {
                dicWords[b] = a
            }
        }
        
        return true
    }
}