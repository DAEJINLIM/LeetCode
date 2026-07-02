class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {

        for i in 0..<9 {
            for j in 0..<9 {
                if board[i][j] != "." {
                    for r in 0..<9 {
                        if r != i && board[r][j] == board[i][j] {
                            return false
                        }
                    }
                    for c in 0..<9 {
                        if c != j && board[i][c] == board[i][j] {
                            return false
                        }
                    }

                    let (x, y) = (i / 3 * 3, j / 3 * 3)

                    for a in 0..<3 {
                        for b in 0..<3 {
                            if board[a+x][b+y] != "." && a+x != i && b+y != j && board[a+x][b+y] == board[i][j] {
                                return false
                            }
                        }
                    }
                }
            }
        }

        return true
    }
}