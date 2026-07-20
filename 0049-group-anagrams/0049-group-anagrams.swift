class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var groups = [String:[String]]()
        
        for str in strs {
            let sort = String(str.sorted())
            groups[sort, default: [String]()].append(str)
        }

        return groups.values.map { $0 }
    }
}
