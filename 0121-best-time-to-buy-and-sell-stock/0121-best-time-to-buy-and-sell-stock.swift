class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var profit = 0
        
        for price in prices {
            minPrice = min(minPrice, price)
            profit = max(profit, price - minPrice)
        }
        
        return profit
    }
}