class Solution {
    var sum = 0
    var lastNum = 0

    func romanToInt(_ s: String) -> Int {
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
                    lastNum = num
                    sum += num
                } else {
                    sum -= lastNum
                    sum += num - lastNum
                }
            }
        }
        return sum
    }
}