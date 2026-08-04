class Solution {
    func simplifyPath(_ path: String) -> String {
        let split = path.split(separator: "/").filter { $0 != "/" }
        var result = [String]()
        
        for i in split {
            if i == "." {
                continue
            } else if i == ".." {
                if !result.isEmpty {
                    result.removeLast()
                }
            } else {
                result.append(String(i))
            }
        }
        
        return "/" + result.joined(separator: "/")
    }
}