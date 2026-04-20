class Solution {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        var incoming = [Int](repeating: 0, count: n + 1)
        var outgoing = [Int](repeating: 0, count: n + 1)

        for pair in trust {
          outgoing[pair[0]] += 1
          incoming[pair[1]] += 1
        }

        for i in 1...n {
          if incoming[i] == n - 1 && outgoing[i] == 0 {
            return i
          } 
        }
    return -1
    }
}