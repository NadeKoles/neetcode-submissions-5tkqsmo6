class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let str = s
            .split(separator: " ")
            .joined()
            .filter{ $0.isLetter || $0.isNumber }
            .lowercased()
        let strRev = String(str.reversed())
        return str == strRev
    }
}