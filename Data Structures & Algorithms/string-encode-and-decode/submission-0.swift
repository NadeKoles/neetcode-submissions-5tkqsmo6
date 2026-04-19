class Solution {

    func encode(_ strs: [String]) -> String {
        var str = String()
        for s in strs {
            let count = s.count
            str.append("\(count)" + "#" + s)
        }
        
        return str
    }

    func decode(_ str: String) -> [String] {
        if str.count == 0 {
            return []
        }
        
        var i = str.startIndex
        var ans = [String]()
        
        while i < str.endIndex {
            let j = str[i...].firstIndex(of: "#")!
            let length = Int(str[i..<j])!
            let start = str.index(after: j)
            let end = str.index(start, offsetBy: length)
            ans.append(String(str[start..<end]))
            i = end
        }
        return ans
    }
}
