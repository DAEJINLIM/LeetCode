
class RandomizedSet {
    var arr = Set<Int>()

    init() {
    }
    
    func insert(_ val: Int) -> Bool {
        let count = arr.count
        arr.insert(val)
        return count == arr.count ? false : true
    }
    
    func remove(_ val: Int) -> Bool {
        let count = arr.count
        arr.remove(val)
        return count == arr.count ? false : true
    }
    
    func getRandom() -> Int {
        return arr.randomElement()!
    }
}
