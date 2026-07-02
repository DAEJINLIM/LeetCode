class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var row = Array(repeating: Set<Character>(), count: 9)
        var col = Array(repeating: Set<Character>(), count: 9)
        var boxs = Array(repeating: Set<Character>(), count: 9)

        for i in 0..<9 {
            for j in 0..<9 {
                let num = board[i][j] 

                if num == "." {
                    continue
                }

                let box = i / 3 * 3 + j / 3
                
                if row[i].contains(num) || col[j].contains(num) || boxs[box].contains(num) {
                    return false
                }

                row[i].insert(num)
                col[j].insert(num)
                boxs[box].insert(num)
            }
        }

        return true
    }
}