class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        let rowM = matrix.count
        let colM = matrix[0].count

        var rows = Set<Int>()
        var cols = Set<Int>()

        for i in 0..<rowM {
            for j in 0..<colM {
                if matrix[i][j] == 0 {
                    rows.insert(i)
                    cols.insert(j)
                }
            }
        }

        for r in rows {
            for c in 0..<colM {
                matrix[r][c] = 0
            }
        }

        for c in cols {
            for r in 0..<rowM {
                matrix[r][c] = 0
            }
        }
    }
}