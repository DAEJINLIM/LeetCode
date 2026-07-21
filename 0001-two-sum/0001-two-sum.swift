class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic = [Int: Int]()

        for (i, num) in nums.enumerated() {
            let remain = target - num

            if let index = dic[remain] {
                return [index, i]
            }

            dic[num] = i
        }

        return []
    }
}