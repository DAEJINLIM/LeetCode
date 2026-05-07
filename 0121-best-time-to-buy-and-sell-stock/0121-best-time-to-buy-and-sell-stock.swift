class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var arr = [(Int,Int)]()
        var low = 1000000
        var high = 0

        for i in prices {
            if low > i {
                if high != 0 {
                    arr.append((low,high))
                }
                high = 0
                low = i
            } else if high < i {
                high = i
            }
        }
        if high != 0 {
            arr.append((low,high))
        }
        return arr.count == 0 ? 0 : arr.map { $0.1 - $0.0 }.max()!
    }
}