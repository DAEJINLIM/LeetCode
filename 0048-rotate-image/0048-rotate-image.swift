class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let count = matrix.count

        for i in 0..<count {
            for j in i+1..<count {
                let temp = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = temp
            }
        }

        for i in 0..<count {
            matrix[i].reverse()
        }
    }
}