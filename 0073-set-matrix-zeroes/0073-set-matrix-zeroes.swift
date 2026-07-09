class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        let rowM = matrix.count
        let colM = matrix[0].count
        var row = [Int]()
        var col = [Int]()
        var zeros = [(Int,Int)]()

        for i in 0..<rowM {
            for j in 0..<colM {
                if matrix[i][j] == 0 {
                    zeros.append((i,j))
                }
            }
        }

        for (i,j) in zeros {
            if !row.contains(i) {
                row.append(i)
                for c in 0..<colM {
                    matrix[i][c] = 0
                }
            }
            if !col.contains(j) {
                col.append(j)
                for r in 0..<rowM {
                    matrix[r][j] = 0
                }
            }
        }
    }
}