class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        let m = matrix.count
        let n = matrix[0].count

        var firstRowZero = false
        var firstColZero = false

        // 첫 번째 행에 0이 있는지 확인
        for j in 0..<n {
            if matrix[0][j] == 0 {
                firstRowZero = true
                break
            }
        }

        // 첫 번째 열에 0이 있는지 확인
        for i in 0..<m {
            if matrix[i][0] == 0 {
                firstColZero = true
                break
            }
        }

        // 첫 번째 행/열을 마커로 사용
        for i in 1..<m {
            for j in 1..<n {
                if matrix[i][j] == 0 {
                    matrix[i][0] = 0
                    matrix[0][j] = 0
                }
            }
        }

        // 마커를 보고 내부를 0으로 변경
        for i in 1..<m {
            for j in 1..<n {
                if matrix[i][0] == 0 || matrix[0][j] == 0 {
                    matrix[i][j] = 0
                }
            }
        }

        // 첫 번째 행 처리
        if firstRowZero {
            for j in 0..<n {
                matrix[0][j] = 0
            }
        }

        // 첫 번째 열 처리
        if firstColZero {
            for i in 0..<m {
                matrix[i][0] = 0
            }
        }
    }
}