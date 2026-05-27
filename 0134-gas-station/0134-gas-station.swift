class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        var totalGas = 0
        var currentGas = 0
        var startIndex = 0

        for i in 0..<gas.count {
            let remain = gas[i] - cost[i]
            totalGas += remain
            currentGas += remain

            if currentGas < 0 {
                startIndex = i + 1
                currentGas = 0
            }
        }

        return totalGas >= 0 ? startIndex : -1
    }
}
