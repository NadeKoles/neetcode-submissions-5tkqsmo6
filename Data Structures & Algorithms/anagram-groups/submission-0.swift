class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var ans = [String: [String]]()

        for s in strs {
            let sortedS = String(s.sorted())
            ans[sortedS, default: []].append(s)
        } 

        return Array(ans.values)
    }
}
