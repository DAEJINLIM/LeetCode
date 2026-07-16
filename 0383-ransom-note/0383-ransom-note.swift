class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dic = [Character: Int]()
        
        for c in magazine {
            dic[c, default: 0] += 1 
        }

        for c in ransomNote {
            dic[c, default: 0] -= 1
            if dic[c, default: 0] < 0 { 
                return false
            }
        }

        return true
    }
}