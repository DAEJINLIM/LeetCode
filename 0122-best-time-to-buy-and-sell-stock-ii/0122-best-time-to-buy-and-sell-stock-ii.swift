class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var result = 0

        for i in 0..<prices.count-1 {
            let profit = prices[i+1] - prices[i]
            if profit > 0 {
                result += profit
            }
        }

        return result
    }
}