class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let count = matrix.count

        for i in 0..<count {
            for j in 0..<count {
                let num = matrix[i].removeFirst()
                matrix[j].append(num)
            }
        }

        for i in 0..<count {
            matrix[i].reverse()
        }
    }
}