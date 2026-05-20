class Solution {
    func romanToInt(_ s: String) -> Int {
        var sum = 0
        var lastNum = 0

        for char in s {
            var num = 0
            if char == "I" {
                num = 1
            } else if char == "V" {
                num = 5
            } else if char == "X" {
                num = 10
            } else if char == "L" {
                num = 50
            } else if char == "C" {
                num = 100
            } else if char == "D" {
                num = 500
            } else if char == "M" {
                num = 1000
            }
            
            if lastNum == 0 {
                lastNum = num
                sum += num
            } else {
                if lastNum >= num {
                    sum += num
                } else {
                    sum += num - (2 * lastNum)
                }
                lastNum = num
            }
        }
        return sum
    }
}