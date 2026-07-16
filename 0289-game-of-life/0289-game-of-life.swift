class Solution {
    func gameOfLife(_ board: inout [[Int]]) {
        let row = board.count
        let col = board.first!.count
        let dirs = [(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1),  (1, 0),  (1, 1)]

        for r in 0..<row {
            for c in 0..<col {
                var live = 0

                for (dr, dc) in dirs {
                    let nr = r + dr
                    let nc = c + dc

                    if nr >= 0 && nr < row &&
                    nc >= 0 && nc < col &&
                    abs(board[nr][nc]) == 1 {
                        live += 1
                    }
                }

                if board[r][c] == 1 && (live < 2 || live > 3) {
                    board[r][c] = -1
                } else if board[r][c] == 0 && live == 3 {
                    board[r][c] = 2
                }
            }
        }

        for r in 0..<row {
            for c in 0..<col {
                if board[r][c] == -1 {
                    board[r][c] = 0
                } else if board[r][c] == 2 {
                    board[r][c] = 1
                }
            }
        }
        
    }
}