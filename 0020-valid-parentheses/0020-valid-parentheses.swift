class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 == 1 { return false }

        var str = [Character]()

        for i in s {
            if i == "(" || i == "{" || i == "[" {
                str.append(i)
            } else {
                if str.count == 0 { return false }

                let last = str.removeLast()
                if i == ")" && last != "(" || i == "}" && last != "{"  || i == "]" && last != "[" {
                    return false
                }
            }
        }

        return str.isEmpty
     }
}