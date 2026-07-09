class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        let width = matrix[0].count - 1
        let height = matrix.count - 1
        var result = [Int]()
        var top = 0
        var bottom = height
        var left = 0
        var right = width
        var x = 0 {
            didSet {
                print("x: \(x), y: \(y)")
            }
        }
        var y = 0 {
            didSet {
                print("x: \(x), y: \(y)")
            }
        }

        while true {
            for col in left...right {
                result.append(matrix[top][col])
            }
            top += 1
            if top > bottom { break }
            
            for row in top...bottom {
                result.append(matrix[row][right])
            }
            right -= 1
            if left > right { break }

            for col in (left...right).reversed() {
                result.append(matrix[bottom][col])
            }
            bottom -= 1
            if top > bottom { break }

            for row in (top...bottom).reversed() {
                result.append(matrix[row][left])
            }
            left += 1
            if left > right { break }
        }

        return result
    }
}