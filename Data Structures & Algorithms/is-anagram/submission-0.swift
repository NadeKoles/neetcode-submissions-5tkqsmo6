class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var dct1 = [Character:Int]()
        var dct2 = [Character:Int]()

        for char in Array(s) {
            dct1[char, default: 0] += 1 
        }

        for char in Array(t) {
            dct2[char, default: 0] += 1
        }

        return dct1 == dct2
    }
}
