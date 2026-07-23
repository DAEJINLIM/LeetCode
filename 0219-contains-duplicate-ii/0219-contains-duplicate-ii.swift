class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dic = [Int: Int]()
        for (i, n) in nums.enumerated() {
            
            if dic[n] != nil && abs(dic[n]! - i) <= k {
                return true
            } else {
                dic[n] = i
            }
        }
        return false
    }
}
