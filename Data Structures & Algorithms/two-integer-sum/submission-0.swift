class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dct = [Int:Int]()

        for (i, value) in nums.enumerated() {
            let need = target - value

            if let j = dct[need] {
                return i < j ? [i, j] : [j, i]
            }
            
            dct[value] = i
          
        }
    
        return []     
    }
}
